using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace E_CarRentalSystem.Models
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base("name=CarRentalDatabase")
        {

        }

        public DbSet<User> users { get; set; }
        public DbSet<Car> cars { get; set; }
        public DbSet<Request> requests { get; set; }
    }
}