Return-Path: <dmitry.torokhov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160711172040.GB21285@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
	<20160711171506.GC26822@dtor-ws> <20160711172040.GB21285@thunk.org>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Mon, 11 Jul 2016 10:26:12 -0700
Message-ID: <CAKdAkRRchUd86RVY5MFwdQ40g5o9fq-gXt8ZF8wUovEkJqcRiw@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 10:20 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Mon, Jul 11, 2016 at 10:15:06AM -0700, Dmitry Torokhov wrote:
>>
>> Cherry picking a commit from a branch/remote is much nicer than fetching
>> a part of [quilt based?] patch queue from git, unless I misunderstand
>> what you are proposing.
>
> The reason why I'm wondering whether or not quilt based might be
> better is because if it turns out that a patch introduces a
> regression, with a quilt based system the patch can be *dropped*, or
> revised in place.
>
> When you do a cherry-pick, you depend on the BSP kernel maintainer
> figuring out that a commit was later reverted, or fixed by a later
> commit that might have a different name, and which doesn't make it
> obvious that if you take commit 'A', you REALLY want to take commits
> 'B' and 'C' as well....

You _never_ use pure stable unless you are talking about bleeding edge
community distro, there is always work on top of stable, so you can't
do "quilt rebases".

-- 
Dmitry
