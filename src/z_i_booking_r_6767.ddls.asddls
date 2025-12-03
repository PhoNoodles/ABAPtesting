@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view from /DMO/I_BOOKING_U'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_I_BOOKING_R_6767
  as select from /DMO/I_Booking_U as Booking
  association to parent Z_I_TRAVEL_R_6767 as _Travel on $projection.TravelID = _Travel.TravelID
{
  key TravelID,
  key BookingID,
      BookingDate,
      CustomerID,
      AirlineID,
      ConnectionID,
      FlightDate,
      @Semantics.amount.currencyCode: 'Currency_Code'
      FlightPrice  as Flight_Price,
      CurrencyCode as Currency_Code,
      /* Associations */
      _BookSupplement,
      _Carrier,
      _Connection,
      _Customer,
      _Travel
}
