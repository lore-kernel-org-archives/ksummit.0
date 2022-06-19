From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Sun, 19 Jun 2022 13:04:01 +0300
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <Yq6+p+aRCjeZ7QsS@infradead.org>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
Message-ID: <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
Message-ID: <20220619100401.ayNdF3TAGvOTc-od0kKlNGs23rthqdqQBbeoSZxTHrU@z>

On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig wrote:
> On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> > All previous topics but this one are technical. To restore the balance a
> > bit (and also because I believe it's important to the success of this
> > project :-)), I'd like to also discuss the impact on the kernel
> > maintenance at large, beyond just the maintainers who opt in to be early
> > adopters of rust in their subsystem.
> 
> Yes.  That is I think the most important point.
> 
> I've played around with rust a bit for userspace project, and there is
> things I like a lot like strict type safety and the ownership model, and
> things I detest like verbose and unlogic syntax, the cargo cult of
> vendoring libraries instead of a sane shared library and versioning
> model (althought that should be largerly irrelevant for the kernel),
> and compared to many other languages it seems overall rather sane.
> 
> But I'm really worried about the impact on the kernel, as interface
> between languages are a real pain, and so far I'm not convinced at
> all that this pain is worth the gain, even if that could change in
> the future.

One point I'd like to explicitly address, as it seems to be very
relevant to me when it comes to whether or not the pain is worth the
gain, is how we'll deal with the fact that the rust compiler will tell a
non-negligible [*] part of the kernel developers that they don't have
the skills to write kernel code. Will we have a credible option to offer
there to help people improve their skills set, and how will we deal with
the fact that some people will be left on the side of the road ? Or
would we acknowledge what may be the elephant in the room that this
would actually be a good thing for the kernel code quality ? What about
the impact on a community that is already overworked and prone to
burn-out ?

[*] I have no way to quantify this at the moment, maybe I'm overly
pessimistic, and the number will likely vary depending on areas,
probably impacting BSPs differently than mainline.

> It doesn't help that the showcase seems to be binder,
> code that should have been in userspace from the start.
> 
> Btw, a lot of these aspects also apply to the whole drivers in eBPF
> discussion.

-- 
Regards,

Laurent Pinchart
