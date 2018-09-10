Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30A731075
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:40:03 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D34B2F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:40:01 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id i7-v6so17999205lfh.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:40:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Sep 2018 09:39:58 -0700
Message-ID: <CAOesGMh037Q-yT+FdDCjs=uVET3RQZDPesyEXzH8EABu2GQNzQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 8:31 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> I need to split this up, otherwise I'll get lost on the different
> sub-topics. I'll start with the easy ones.

Agreed, I probably won't be able to keep up with this whole thread
this week due to $job, but a few stray comments:

> On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>> Specific topics I'm interested in:
>>> - New experiments in group maintainership, and sharing lessons learned
>>> in general.
>>
>> I think that's good. But again, partly because these kinds of subjects
>> tend to devolve into too much of a generic overview, may I suggest
>> again trying to make things very concrete.
>>
>> For example, talk about the actual tools you use. Make it tangible. A
>> couple of years ago the ARM people talked about the way they split
>> their time to avoid stepping on each other (both in timezones, but
>> also in how they pass the baton around in general, in addition to
>> using branches).
>>
>> And yes, a lot of it probably ends up being "we didn't actually make
>> this official or write it up, but we worked enough together that we
>> ended up doing XYZ". That's fine. That's how real flows develop. With
>> discussion of what the problems were, and what this solved.
>>
>> In other words, make it down to earth. Not the "visionary keynote",
>> but the "this is the everyday flow".
>
> Yup, fully agreed. We don't need another overview over group
> maintainer ship. Also I don't think an update from arm-soc/tip or drm
> is interesting either. I think only if there's a new group/subsystem
> trying this out, with all the nitty-gritty details of "this totally
> blew up in our faces" and "this worked shockingly well" and "here we
> need to improve still, we're not happy" is what I'm looking for.
> Without those details there's nothing really to learn, beyond just
> rehashing one of the old discussions. I guess I should have put more
> emphasis on _new_ experiments :-)

I'm not interested in standing up and talking about how Arnd and I
handle things right now, but what I would be really interested in
talking about is where we still have chafing, where things don't
actually work great (Linus might be happy, but we're definitely in a
spot where we could simplify life for _us_ quite a bit).

I'm super excited to hear a bit about the _actual_ plans of gitlab
move. As mentioned, not a visionary keynote, but others also talking
about what they're looking at to fix their current pain points.


For us on arm-soc, we've gotten a bit better at reducing our overhead,
but the bulk of material coming in these days tends to be a no-op from
us (just figure out that it merges, that we have handshakes with any
external dependencies or shared branches, and pick it up). We have
some submaintainers who need more work, and we pay closer attention to
and have more feedback, but reducing the overhead for some of the
others by letting them cross-review and merge themselves would be
useful.

I'm also starting to get mildly annoyed by the single-patch pull
requests that we sometimes get. In some ways, applying patches are
easier, not harder. For those, the model where "cherry pick when
merging" in common code review tools would work really well.

> And if nothing changed, no new groups I think think we should table
> this right away.

I really want to talk about this, but if there isn't enough interest
from others, we could just do it in a hallway. But I think the topic
is on point for the maintainer summit.


-Olof
