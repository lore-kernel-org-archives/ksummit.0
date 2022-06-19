From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Sun, 19 Jun 2022 16:53:46 +0300
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
Message-ID: <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
Message-ID: <20220619135346.p_Ppx0G9VAVHnqLWNuFtySq-GinkwhGDjGVkIU3S9Jc@z>

On Sun, Jun 19, 2022 at 07:19:38AM -0600, Jens Axboe wrote:
> On 6/19/22 6:56 AM, James Bottomley wrote:
> >> One point I'd like to explicitly address, as it seems to be very
> >> relevant to me when it comes to whether or not the pain is worth the
> >> gain, is how we'll deal with the fact that the rust compiler will
> >> tell a non-negligible [*] part of the kernel developers that they
> >> don't have the skills to write kernel code. Will we have a credible
> >> option to offer there to help people improve their skills set, and
> >> how will we deal with the fact that some people will be left on the
> >> side of the road ? Or would we acknowledge what may be the elephant
> >> in the room that this would actually be a good thing for the kernel
> >> code quality ? What about the impact on a community that is already
> >> overworked and prone to burn-out ?
> >>
> >> [*] I have no way to quantify this at the moment, maybe I'm overly
> >> pessimistic, and the number will likely vary depending on areas,
> >> probably impacting BSPs differently than mainline.
> > 
> > I don't think that's a huge concern.  After all rust isn't going to
> > penetrate every subsystem all at once ... and realistically it will
> > only penetrate some subsystems if there's the ability to review it.
> > 
> > I really doubt anyone at the maintainer or reviewer level of the kernel
> > doesn't have the ability to learn rust (now whether they have the
> > desire to is quite another matter) and I'd be surprised if we can find
> > any kernel developer who only speaks C.  I think the biggest problem
> > with rust is that there's definitely an anti-C bias in the language. 
> > What I mean by that is if you look at Java they chose to be as close to
> > C where possible to make the language easier to learn.  Rust seems to
> > have taken the opposite view and picked a lot of things which could
> > have been C like (typing, function calls, returns, mutability, etc.)
> > and done them differently just because they wanted to be different from
> > C.  That does cause issues for C people because you tend to trip over
> > the anti-C biases in the language and are constantly having to look the
> > basic syntax up.  This really increases the learning curve going from C
> > to rust, which gets annoying very fast, but it's not insurmountable.
> > 
> > All that said, I expect once we start getting rust based patches, it
> > will quickly become apparent where the rust receptive subsystems are
> > and I would expect reviewers in those subsystems will quickly become
> > rust fluent.  This doesn't answer the pain vs gain aspect, but I
> > suspect we won't know that until we actually try.
> 
> FWIW, I agree with you here, James. And I have to say that the original
> sentiment expressed here by Laurent is weirdly elitist, and not
> something that seems positive if that's the case. I'd suggest
> re-calibrating that mindset...

I'm not sure about the elitist part, but it's certainly not a positive
statement. I'm concerned about the pain that rust in the kernel would
inflict. Whether it's worth the gain or not is not for me to decide, but
I'm certainly concerned that it could lead to a catastrophe if we don't
carefully think about the issues, acknowledge them, and find ways to
solve them. I don't think winging it is a real option here, but I'd be
more than happy to be shown that my concerns are not founded :-)

> Some subsystem maintainers are pretty much spread as thinly as they can
> be in terms of workloads, while other subsystems are less active and
> supposedly have more spare cycles on their hands. Some handle multiple
> subsystems, some subsystems are tiny, some are huge. All of this will
> impact both the motivation abd ability to adopt rust.

-- 
Regards,

Laurent Pinchart
