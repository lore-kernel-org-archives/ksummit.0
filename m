From: Matthew Wilcox <willy6545@gmail.com>
Date: Sun, 19 Jun 2022 16:57:10 -0400
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com> <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <Yq8pXroV+23xr5w5@pendragon.ideasonboard.com>
 <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
Message-ID: <CAFhKne81bdbQWnTSMhALhJVbRFMtX1ygREj-ryFU8xDKqEDk=A@mail.gmail.com>

I think there are a lot of languages which promise this. The question is
whether any of them will get the critical mass to ensure that we have a
steady supply of programmers who know the language. Imagine if we'd decided
to use Haskell, Erlang or Ada (languages I was taught in university which
no longer have significant programming communities).

Rust seems to have the momentum. More so than Go or any other new language
in recent years.

On Sun., Jun. 19, 2022, 15:08 Geert Uytterhoeven, <geert@linux-m68k.org>
wrote:

> Hi Laurent,
>
> On Sun, Jun 19, 2022 at 3:49 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > On Sun, Jun 19, 2022 at 08:56:46AM -0400, James Bottomley wrote:
> > > On Sun, 2022-06-19 at 13:04 +0300, Laurent Pinchart wrote:
> > > > On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig wrote:
> > > > > On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> > > > > > All previous topics but this one are technical. To restore the
> > > > > > balance a bit (and also because I believe it's important to the
> > > > > > success of this project :-)), I'd like to also discuss the impact
> > > > > > on the kernel maintenance at large, beyond just the maintainers
> > > > > > who opt in to be early adopters of rust in their subsystem.
> > > > >
> > > > > Yes.  That is I think the most important point.
> > > > >
> > > > > I've played around with rust a bit for userspace project, and there
> > > > > is things I like a lot like strict type safety and the ownership
> > > > > model, and things I detest like verbose and unlogic syntax, the
> > > > > cargo cult of vendoring libraries instead of a sane shared library
> > > > > and versioning model (althought that should be largerly irrelevant
> > > > > for the kernel), and compared to many other languages it seems
> > > > > overall rather sane.
> > >
> > > This is more or less my assessment from playing with rust as well.
> > >
> > > > > But I'm really worried about the impact on the kernel, as interface
> > > > > between languages are a real pain, and so far I'm not convinced at
> > > > > all that this pain is worth the gain, even if that could change in
> > > > > the future.
> > > >
> > > > One point I'd like to explicitly address, as it seems to be very
> > > > relevant to me when it comes to whether or not the pain is worth the
> > > > gain, is how we'll deal with the fact that the rust compiler will
> > > > tell a non-negligible [*] part of the kernel developers that they
> > > > don't have the skills to write kernel code. Will we have a credible
> > > > option to offer there to help people improve their skills set, and
> > > > how will we deal with the fact that some people will be left on the
> > > > side of the road ? Or would we acknowledge what may be the elephant
> > > > in the room that this would actually be a good thing for the kernel
> > > > code quality ? What about the impact on a community that is already
> > > > overworked and prone to burn-out ?
> > > >
> > > > [*] I have no way to quantify this at the moment, maybe I'm overly
> > > > pessimistic, and the number will likely vary depending on areas,
> > > > probably impacting BSPs differently than mainline.
> > >
> > > I don't think that's a huge concern.  After all rust isn't going to
> > > penetrate every subsystem all at once ... and realistically it will
> > > only penetrate some subsystems if there's the ability to review it.
> > >
> > > I really doubt anyone at the maintainer or reviewer level of the kernel
> > > doesn't have the ability to learn rust (now whether they have the
> > > desire to is quite another matter) and I'd be surprised if we can find
> > > any kernel developer who only speaks C.  I think the biggest problem
> > > with rust is that there's definitely an anti-C bias in the language.
> > > What I mean by that is if you look at Java they chose to be as close to
> > > C where possible to make the language easier to learn.  Rust seems to
> > > have taken the opposite view and picked a lot of things which could
> > > have been C like (typing, function calls, returns, mutability, etc.)
> > > and done them differently just because they wanted to be different from
> > > C.  That does cause issues for C people because you tend to trip over
> > > the anti-C biases in the language and are constantly having to look the
> > > basic syntax up.  This really increases the learning curve going from C
> > > to rust, which gets annoying very fast, but it's not insurmountable.
> >
> > Time to invent a C-like version of rust ? :-) Jokes aside, as far as I
> > understand the syntax is different from C because it was inspired by
> > other languages, not out of a desire to be anti-C. I could be wrong
> > though, and it doesn't really matter anyway, I doubt there's anything we
> > could do there.
>
> When reading "things which could have been C like", I had the exact
> same thought ;-)
>
> In the past, many new paradigms were implemented in a variety of new
> languages, usually inspired by other languages (e.g. some looked like
> C, others like Pascal).
>
> At the risk of sounding too procrastinating (perfect is the enemy
> of good, and see James' thread about becoming too fearful...),
> perhaps it is wise to question if Rust arrived too soon, and a more
> C-like language implementing the same safety paradigms is just around
> the corner, or already in its infancy?
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 --
> geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker.
> But
> when I'm talking to journalists I just say "programmer" or something like
> that.
>                                 -- Linus Torvalds
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/attachments/20220619/82204f26/attachment-0001.html>
