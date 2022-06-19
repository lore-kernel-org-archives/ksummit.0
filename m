From: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Sun, 19 Jun 2022 10:27:08 -0400
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
 <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
Message-ID: <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
Message-ID: <20220619142708.pYldRgCpVLaokVBL_GMJuU4SRqjoN9BS7UeCQ7iAmb4@z>

On Sun, 2022-06-19 at 16:53 +0300, Laurent Pinchart wrote:
> On Sun, Jun 19, 2022 at 07:19:38AM -0600, Jens Axboe wrote:
> > On 6/19/22 6:56 AM, James Bottomley wrote:
[...]
> > > All that said, I expect once we start getting rust based patches,
> > > it will quickly become apparent where the rust receptive
> > > subsystems are and I would expect reviewers in those subsystems
> > > will quickly become rust fluent.  This doesn't answer the pain vs
> > > gain aspect, but I suspect we won't know that until we actually
> > > try.
> > 
> > FWIW, I agree with you here, James. And I have to say that the
> > original sentiment expressed here by Laurent is weirdly elitist,
> > and not something that seems positive if that's the case. I'd
> > suggest re-calibrating that mindset...
> 
> I'm not sure about the elitist part, but it's certainly not a
> positive statement. I'm concerned about the pain that rust in the
> kernel would inflict.

I get that, and I think it's a serious concern.  I just also think we
would waste more time second guessing this issue that we would consume
if we just tried it.  It's not like allowing Rust into the kernel is
some sort of Rubicon that once crossed we can never go back.  I think
we won't know the pain vs gain until at least a year into the
experiment of accepting Rust.  Even at that late stage, if everyone
agrees it caused more problems than it solves, I bet it could all be
quickly excised.

So the bottom line is I think while we have a community of volunteers
willing to try it we let them on the understanding the results will be
evaluated at some point.

>  Whether it's worth the gain or not is not for me to decide,
> but I'm certainly concerned that it could lead to a catastrophe if we
> don't carefully think about the issues, acknowledge them, and find
> ways to solve them. I don't think winging it is a real option here,
> but I'd be more than happy to be shown that my concerns are not
> founded :-)

Have more faith in the community and open source process. We've screwed
up many times (devfs anyone ...) learned from the mistake and fixed it.
I'm happy to bet that accepting Rust will be no different from all the
other screwups we allowed in and later fixed.  So I don't think there
will be a catastrophe.  Either the rust experiment works or it will
become fairly quickly apparent if it doesn't and it will get removed. 
The worst case, I suppose, is that the benefit is marginal in which
case there's no consensus on removal vs continuation and we simply
continue through inertia.  I bet in that situation Rust penetration
will be fairly minimal and confined to enthusiastic subsystems with the
rest taking steps to isolate themselves from it.  What we'd need in
this case is some opinionated person running the tree and able to make
the call for us ... now who could that be?

James


