//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Requisition
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Requisition()
        {
            this.RequisitionDetails = new HashSet<RequisitionDetail>();
        }
    
        public int RequisitionId { get; set; }
        public int EmployeeNo { get; set; }
        public string Comments { get; set; }
        public string Status { get; set; }
        public System.DateTime DateOfSubmitted { get; set; }
        public System.DateTime DateOfDecision { get; set; }
        public int DecidedBy { get; set; }
        public string Notes { get; set; }
        public string DeptCode { get; set; }
    
        public virtual Department Department { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RequisitionDetail> RequisitionDetails { get; set; }
    }
}
