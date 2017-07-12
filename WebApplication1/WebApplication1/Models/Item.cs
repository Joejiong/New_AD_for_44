using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Item
    {
        [Key]
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
       

    }
}