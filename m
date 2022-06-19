From: Christoph Hellwig <hch@infradead.org>
Date: Sat, 18 Jun 2022 23:13:59 -0700
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
Message-ID: <Yq6+p+aRCjeZ7QsS@infradead.org>
Message-ID: <20220619061359.-AAQkEABQ-s1-uD0BunzGxIvw66dOGQ3-MfXbpUtYOw@z>

On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> All previous topics but this one are technical. To restore the balance a
> bit (and also because I believe it's important to the success of this
> project :-)), I'd like to also discuss the impact on the kernel
> maintenance at large, beyond just the maintainers who opt in to be early
> adopters of rust in their subsystem.

Yes.  That is I think the most important point.

I've played around with rust a bit for userspace project, and there is
things I like a lot like strict type safety and the ownership model, and
things I detest like verbose and unlogic syntax, the cargo cult of
vendoring libraries instead of a sane shared library and versioning
model (althought that should be largerly irrelevant for the kernel),
and compared to many other languages it seems overall rather sane.

But I'm really worried about the impact on the kernel, as interface
between languages are a real pain, and so far I'm not convinced at
all that this pain is worth the gain, even if that could change in
the future.  It doesn't help that the showcase seems to be binder,
code that should have been in userspace from the start.

Btw, a lot of these aspects also apply to the whole drivers in eBPF
discussion.
