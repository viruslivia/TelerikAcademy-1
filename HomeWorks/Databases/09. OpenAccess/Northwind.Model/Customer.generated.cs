#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Data.Common;
using System.Collections.Generic;
using Telerik.OpenAccess;
using Telerik.OpenAccess.Metadata;
using Telerik.OpenAccess.Data.Common;
using Telerik.OpenAccess.Metadata.Fluent;
using Telerik.OpenAccess.Metadata.Fluent.Advanced;
using NorthwindFramework;
using Northwind.Model;


namespace Northwind.Model	
{
	[Table("Customers")]
	[ConcurrencyControl(OptimisticConcurrencyControlStrategy.Changed)]
	[Serializable()]
	public partial class Customer : NotificationObject
	{
		private string _customerID;
		[Column("CustomerID", OpenAccessType = OpenAccessType.UnicodeStringFixedLength, IsPrimaryKey = true, Length = 5, Scale = 0, SqlType = "nchar")]
		[Storage("_customerID")]
		public virtual string CustomerID 
		{ 
		    get
		    {
		        return this._customerID;
		    }
		    set
		    {
				if (this.CustomerID == value)
				{
					return;
				}
		        this._customerID = value;
				this.RaisePropertyChanged("CustomerID");
		    }
		}
		
		private string _companyName;
		[Column("CompanyName", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, Length = 40, Scale = 0, SqlType = "nvarchar")]
		[Storage("_companyName")]
		public virtual string CompanyName 
		{ 
		    get
		    {
		        return this._companyName;
		    }
		    set
		    {
				if (this.CompanyName == value)
				{
					return;
				}
		        this._companyName = value;
				this.RaisePropertyChanged("CompanyName");
		    }
		}
		
		private string _contactName;
		[Column("ContactName", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 30, Scale = 0, SqlType = "nvarchar")]
		[Storage("_contactName")]
		public virtual string ContactName 
		{ 
		    get
		    {
		        return this._contactName;
		    }
		    set
		    {
				if (this.ContactName == value)
				{
					return;
				}
		        this._contactName = value;
				this.RaisePropertyChanged("ContactName");
		    }
		}
		
		private string _contactTitle;
		[Column("ContactTitle", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 30, Scale = 0, SqlType = "nvarchar")]
		[Storage("_contactTitle")]
		public virtual string ContactTitle 
		{ 
		    get
		    {
		        return this._contactTitle;
		    }
		    set
		    {
				if (this.ContactTitle == value)
				{
					return;
				}
		        this._contactTitle = value;
				this.RaisePropertyChanged("ContactTitle");
		    }
		}
		
		private string _address;
		[Column("Address", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 60, Scale = 0, SqlType = "nvarchar")]
		[Storage("_address")]
		public virtual string Address 
		{ 
		    get
		    {
		        return this._address;
		    }
		    set
		    {
				if (this.Address == value)
				{
					return;
				}
		        this._address = value;
				this.RaisePropertyChanged("Address");
		    }
		}
		
		private string _city;
		[Column("City", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 15, Scale = 0, SqlType = "nvarchar")]
		[Storage("_city")]
		public virtual string City 
		{ 
		    get
		    {
		        return this._city;
		    }
		    set
		    {
				if (this.City == value)
				{
					return;
				}
		        this._city = value;
				this.RaisePropertyChanged("City");
		    }
		}
		
		private string _region;
		[Column("Region", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 15, Scale = 0, SqlType = "nvarchar")]
		[Storage("_region")]
		public virtual string Region 
		{ 
		    get
		    {
		        return this._region;
		    }
		    set
		    {
				if (this.Region == value)
				{
					return;
				}
		        this._region = value;
				this.RaisePropertyChanged("Region");
		    }
		}
		
		private string _postalCode;
		[Column("PostalCode", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 10, Scale = 0, SqlType = "nvarchar")]
		[Storage("_postalCode")]
		public virtual string PostalCode 
		{ 
		    get
		    {
		        return this._postalCode;
		    }
		    set
		    {
				if (this.PostalCode == value)
				{
					return;
				}
		        this._postalCode = value;
				this.RaisePropertyChanged("PostalCode");
		    }
		}
		
		private string _country;
		[Column("Country", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 15, Scale = 0, SqlType = "nvarchar")]
		[Storage("_country")]
		public virtual string Country 
		{ 
		    get
		    {
		        return this._country;
		    }
		    set
		    {
				if (this.Country == value)
				{
					return;
				}
		        this._country = value;
				this.RaisePropertyChanged("Country");
		    }
		}
		
		private string _phone;
		[Column("Phone", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 24, Scale = 0, SqlType = "nvarchar")]
		[Storage("_phone")]
		public virtual string Phone 
		{ 
		    get
		    {
		        return this._phone;
		    }
		    set
		    {
				if (this.Phone == value)
				{
					return;
				}
		        this._phone = value;
				this.RaisePropertyChanged("Phone");
		    }
		}
		
		private string _fax;
		[Column("Fax", OpenAccessType = OpenAccessType.UnicodeStringVariableLength, IsNullable = true, Length = 24, Scale = 0, SqlType = "nvarchar")]
		[Storage("_fax")]
		public virtual string Fax 
		{ 
		    get
		    {
		        return this._fax;
		    }
		    set
		    {
				if (this.Fax == value)
				{
					return;
				}
		        this._fax = value;
				this.RaisePropertyChanged("Fax");
		    }
		}
		
		private IList<Order> _orders = new List<Order>();
		[Collection(InverseProperty = "Customer")]
		[Storage("_orders")]
		public virtual IList<Order> Orders 
		{ 
		    get
		    {
		        return this._orders;
		    }
		}
		
		private IList<CustomerDemographic> _customerDemographics = new List<CustomerDemographic>();
		[Collection(InverseProperty = "Customers")]
		[Storage("_customerDemographics")]
		public virtual IList<CustomerDemographic> CustomerDemographics 
		{ 
		    get
		    {
		        return this._customerDemographics;
		    }
		}
		
	}
}
