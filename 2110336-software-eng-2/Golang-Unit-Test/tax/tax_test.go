package tax

import (
	"math"
	"testing"
)

func TestCalculateTax(t *testing.T) {
	tests := []struct {
		revenue float64
		expected float64
	}{
		{-1, 0}, // Negative revenue
		{0, 0},

		{149999, 0}, 
		{150000, 0}, 
		{150001, 0.05}, 

		{299999, 7499.95},
		{300000, 7500}, 
		{300001, 7500.10}, 

		{499999, 27499.90},
		{500000, 27500},
		{500001, 27500.15},

		{749999, 64999.85},
		{750000, 65000},
		{750001, 65000.20},

		{999999, 114999.80},
		{1000000, 115000},
		{1000001, 115000.25},

		{1999999, 364999.75},        
        {2000000, 365000},      
        {2000001, 365000.30},

		{4999999, 1264999.70},
		{5000000, 1265000},
		{5000001, 1265000.35},

		
	}

	epsilon := 0.01 // Allow small floating-point variations

	for _, tt := range tests {
		result, err := CalculateThaiTax(tt.revenue)
		if tt.revenue < 0 {
			if err == nil {
				t.Errorf("CalculateThaiTax(%f) should return an error but got nil", tt.revenue)
			}
		} else {
			if err != nil {
				t.Errorf("CalculateThaiTax(%f) returned an unexpected error: %v", tt.revenue, err)
			}
			if math.Abs(result-tt.expected) > epsilon {
				t.Errorf("CalculateThaiTax(%f) = %f; want %f", tt.revenue, result, tt.expected)
			}
		}
	}
}