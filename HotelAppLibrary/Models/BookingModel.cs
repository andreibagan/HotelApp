using System;

namespace HotelAppLibrary.Models
{
    public class BookingModel
    {
        public int Id { get; set; }
        public int GuestId { get; set; }
        public int RoomId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool CheckIn { get; set; }
        public decimal TotalCost { get; set; }
    }
}
