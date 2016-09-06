Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E17F8AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 16:46:13 +0000 (UTC)
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE0AF211
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 16:46:12 +0000 (UTC)
Received: by mail-oi0-f68.google.com with SMTP id w78so10132517oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 09:46:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160906133429.5ktkvafprbtxr5sd@localhost>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 6 Sep 2016 09:46:10 -0700
Message-ID: <CAOesGMjd0HrrVOZpumaSw8QvpkGqKsNPmEXWkTFz6rRLK7STag@mail.gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On Tue, Sep 6, 2016 at 6:34 AM, Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
>> Unless customers start boycotting devices that are not
>> upstream-friendly - and I don't think anyone expects this to happen - we'll
>> need to give SoC vendors a different incentive.

As a customer, this is hard, you're a few steps removed from the
decision making and they'll never attribute a failed product to lack
of upstreaming.

[This is going offtopic for this forum]

Instead, the point where there is good leverage is when you work for
the company making the widgets. Preferring to work with vendors who
have sorted out their upstream story, or pressuring, helping,
mentoring or connecting the others to contracting shops that can help
them get going are all good ways in providing appropriate business
pressure back to the vendors.

Chrome OS was successful in this (if I might say so myself), getting
several vendors who earlier had very thin upstream presence to
significantly improve. I haven't seen all that many other projects
being able to do it, but for those of you who are in positions to help
steer SoC choices, do keep this in mind, work with your internal
development teams to make them understand the importance of this, and
make it a priority.

> One way to make SoC vendors understand the benefits of upstream is for
> them to first feel the pain of rebasing their SoC patches to newer
> kernel versions regularly.

You're talking about this as if they haven't already done this for
years. As a matter of fact, they've gotten quite good at it. Masters
even -- it's a competitive advantage for them to be good at it.

Rebasing is also the point in time where they can shed old hardware
support. As a matter of fact, several _look forward to_ rebasing since
it means they can shed a lot of software burden and start (somewhat)
fresh again.

And the other elephant in the room is the fact that right when you
start upstreaming, and only have SOME of your code upstream, rebasing
can be _incredibly_ painful, and it's not uncommon that you get a huge
amount of pushback from upstreaming at all during this time. The best
way to avoid that as far as I've seen, is to do the upstreaming under
different names/locations, so that you can keep the parallel
implementations until you're ready to cut over. If you end up stepping
on the same file/driver names, you're in for a lot of conflicts and
pain.


-Olof
