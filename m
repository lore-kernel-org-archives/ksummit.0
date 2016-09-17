Return-Path: <linus.walleij@linaro.org>
MIME-Version: 1.0
In-Reply-To: <1474054593.2353.76.camel@HansenPartnership.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<1474038939.2353.13.camel@HansenPartnership.com>
	<C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
	<1474054593.2353.76.camel@HansenPartnership.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 17 Sep 2016 12:31:34 +0200
Message-ID: <CACRpkdYeSTEgv96ACQYVFD9soXuE95DtbaNcrfqU65TTbYg7Fg@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>,
	Omar Sandoval <osandov@osandov.com>, Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
 high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 16, 2016 at 9:36 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:

> OK, so the problem with a formal discussion of something like this at
> KS is that of the 80 or so people in the room, likely only 10 have any
> interest whatsoever, leading to intense boredom for the remaining 70.

If it is about the semantics of CFQ, BFQ and MQ yes. But what is lurking
here is also a social problem and that need to be addressed at KS IMO.

Following this from a laidback bystander position I recognize patterns that
we saw earlier in the CPU scheduler community when the fuzz was all
about the interactive qualities of the O(1) scheduler vs rotating staircase
and the eventual merge of the (awesome) CFS scheduler. And the kind of
attention that brought about the (cool) CPU deadline scheduler.

I think the problem is in the original Thomas Kuhnian sense paradigmatic.

That is, loosely defined, what kind of questions should be addressed and
what type of answers that could be expected, a set of working assumptions
for the community so that it can make steady progress and not be
disturbed by irrelevant noise.

The block layer people are working inside a paradigm, that is something
like "use the hardware optimally to maximize throughput". It is obvious fro=
m
things like mq and the fio tool that this is what is percieved as the probl=
em
space it sets out to manouver.

Now comes along this italian who says something totally perpendicular
like "but I care much more about latency", i.e. how interactive the system
is for a user, start-up time of applications under load, no skipping in the
media players under system load and things like that.

Well that is no storage cluster use case...

(Modified truth: Paolo actually consulted for a storage provider that did
not provide a certain average thoughput, but instead an as exact throughput
rate as possible, which made BFQ fit their usecase better. But you get
the point.)

The usual reaction from people working inside the paradigm to concepts
alien to them will be a series of shrugs and yawns. And that is human.
Don't rock the boat. Sit down. Or even "can't you just take a bigger and
faster nvram disk? Well, I think you will be able to in two years so give
up right now."

Even more intimidating when he's making research reports and
measurements and develop repeatable test cases to prove the point.

In the past CPU scheduler debate some people have done lame
handwavy arguments as to why this or that scheduler is so much better,
but that is not the case here. Paolo's tests are very real. Scientific,
repeatable, hard measures.

The point is, I suspect that the block layer community is all about
throughput and the talk about latency and interactivity is seen as an
annoying distraction.

Like the kids making noise about doing detours for catching Pok=C3=A9mons
in the back seat of the car while you're in the driving seat, driving to
some percieved important destination. If you see what I mean. Their
problems is not really your problem, so you don't care much. It will be
more "yeah yeah, we'll see about your Pok=C3=A9mons. Someday."

But as in the case with the CPU schedulers, what we risk getting out
there amongst the comments in LWN and Phoronix and sites like that is a
conspiracy theory: that the block layer devs are living in their ivory towe=
r
and not caring about interactivity of Linux and the desktop user experience
and all that old yada-yada we've heard a million times by now.

The point is not about the Linux desktop even, if you ask me. The point for
me is that for everyone using an Android phone, Linux block layer
interactivity matters, every time an application lags in start up on a
stressed Android, and for spurious writes like "optimizing applications"
it's even worse. (Disclaimer: I represent the embedded, tablet and handset
industry. I might be tainted.)

The people who think ineractivity of the block layer is important to them
wants a voice. And Paolo is there for them, at the KS. I would take this
opportunity to listen to him, whether formally or informally.

ALSO to get the vibe from the kernel developer community at large:
hands down: what matters to us? Data storage clusters of nvrams or
embedded eMMC cards in Android phones? Or both? Is that even a
question so silly that it should not be asked? Don't ask me, ask the KS
attendees. I think it's relevant.

(If for nothing else we do a good job at kicking up dust on this mailing
list already, and we've been told it is actually more important than the
KS itself.)

Yours,
Linus Walleij
