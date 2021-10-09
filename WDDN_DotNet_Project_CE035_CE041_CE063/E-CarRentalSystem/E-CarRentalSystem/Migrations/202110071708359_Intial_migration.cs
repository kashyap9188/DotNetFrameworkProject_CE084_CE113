namespace E_CarRentalSystem.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Intial_migration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Cars",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        No_Seat = c.Int(nullable: false),
                        Rate = c.Int(nullable: false),
                        FuelType = c.String(nullable: false),
                        Description = c.String(nullable: false),
                        PhotoPath = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Requests",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        StartingDate = c.DateTime(nullable: false),
                        EndingDate = c.DateTime(nullable: false),
                        Status = c.String(nullable: false),
                        car_Id = c.Int(),
                        user_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Cars", t => t.car_Id)
                .ForeignKey("dbo.Users", t => t.user_Id)
                .Index(t => t.car_Id)
                .Index(t => t.user_Id);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        Email = c.String(nullable: false),
                        Password = c.String(nullable: false),
                        MobileNo = c.String(nullable: false),
                        Address = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Requests", "user_Id", "dbo.Users");
            DropForeignKey("dbo.Requests", "car_Id", "dbo.Cars");
            DropIndex("dbo.Requests", new[] { "user_Id" });
            DropIndex("dbo.Requests", new[] { "car_Id" });
            DropTable("dbo.Users");
            DropTable("dbo.Requests");
            DropTable("dbo.Cars");
        }
    }
}
