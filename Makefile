TARGETS=1-viznut 2-tejeez 4-visy 5-tejeez 6-visy 7-tejeez \
	8-visy 9-viznut a-pyryp b-red- c-miiro \
	d-viznut-xpansive-varjohukka e-skurk-raer \
	f-xpansive-lost-in-space

play: all
	for x in $(TARGETS); do \
		echo "$$x"; \
		./"$$x" | head -c 128k | ./alsaplay $(APLAYOPTS); \
	done

all: $(TARGETS)
clean:
	rm -f $(TARGETS)
