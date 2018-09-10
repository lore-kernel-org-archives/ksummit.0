Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24014D59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:31:27 +0000 (UTC)
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB81C102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:31:26 +0000 (UTC)
Received: by mail-it0-f53.google.com with SMTP id d10-v6so30052084itj.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 08:31:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 17:31:25 +0200
Message-ID: <CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

I need to split this up, otherwise I'll get lost on the different
sub-topics. I'll start with the easy ones.

On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>> Specific topics I'm interested in:
>> - New experiments in group maintainership, and sharing lessons learned
>> in general.
>
> I think that's good. But again, partly because these kinds of subjects
> tend to devolve into too much of a generic overview, may I suggest
> again trying to make things very concrete.
>
> For example, talk about the actual tools you use. Make it tangible. A
> couple of years ago the ARM people talked about the way they split
> their time to avoid stepping on each other (both in timezones, but
> also in how they pass the baton around in general, in addition to
> using branches).
>
> And yes, a lot of it probably ends up being "we didn't actually make
> this official or write it up, but we worked enough together that we
> ended up doing XYZ". That's fine. That's how real flows develop. With
> discussion of what the problems were, and what this solved.
>
> In other words, make it down to earth. Not the "visionary keynote",
> but the "this is the everyday flow".

Yup, fully agreed. We don't need another overview over group
maintainer ship. Also I don't think an update from arm-soc/tip or drm
is interesting either. I think only if there's a new group/subsystem
trying this out, with all the nitty-gritty details of "this totally
blew up in our faces" and "this worked shockingly well" and "here we
need to improve still, we're not happy" is what I'm looking for.
Without those details there's nothing really to learn, beyond just
rehashing one of the old discussions. I guess I should have put more
emphasis on _new_ experiments :-)

And if nothing changed, no new groups I think think we should table
this right away.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
