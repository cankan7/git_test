library IEEE;
use IEEE.std_logic_1164.all;

entity counter is
    port(
        SYSCLK : in std_logic;
        RST : in std_logic;
        D : in std_logic;
        Q : out std_logic_vecotr(3 downto 0)
    )
end counter;

architecture of architecture_of_counter is

    signal cnt : std_logic_vector(3 downto 0);

begin

    process(SYSCLK, RST)
    begin
        if(RST = '1') then
            Q <= (others => '0');
        elsif rising_edge(SYSCLK) then
            if(D = '1') then
                Q <= Q + 1;
            end if;
        end if;
    end process;

end RTL;