# PremiumCalculator
Death Monthly Premium Calculator

Functionality to calculate death monthly premium calculator is written in Default.aspx page

Two new javascript functions are created fnPremiumCalculation() and fnCalculateAge()

1) fnCalculateAge() : input value = Date of Birth
                      return : Age
                      
2) fnPremiumCalculation() : inputs : Cover, Occupation and Age 
                            return : DeathPremium = ((CoverAmount * Occupation * Age) / (1000 * 12)).toFixed(2)

