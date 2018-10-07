Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D84406994
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 17:11:28 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BE736C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 17:11:28 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id w16-v6so14190953iom.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 07 Oct 2018 10:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <1538861738.4088.5.camel@HansenPartnership.com>
In-Reply-To: <1538861738.4088.5.camel@HansenPartnership.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 7 Oct 2018 19:11:14 +0200
Message-ID: <CAKMK7uFvmXtk=WiZJxGrzQQD1RHv7srA-_e8KdwXZ9Kn5rcmiQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 0/2] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> We've had several threads discussing potential changes to the code of
> conduct but Mauro is the only person to have proposed an actual patch.
> In order to move the debate on, I'm presenting two patches, one to fix
> the email problem Mauro identified and the other to strip the
> enforcement section pending community discussion as Shuah suggested.
>
> I'll take responsibility for collecting any tags people want to add
> (review/ack/sign off, etc) and sending the patch in as a signed pull
> request before 4.19 final if they get enough community support.
>
> Note, I've sent both patches in as a series to facilitate review and
> discussion, but they are separable if one is looked on with less favour
> than the other.
>
> It was also a bit unclear which list to send this to, but I finally
> settled on linux-kernel as the catch all and ksummit-discuss since
> that's where most of the current discussion is.  I can add other lists
> as people suggest them.

Personally I'm not happy at all with how the new code of conduct was
rushed in, least because I still don't understand why it happened, but
also for all the other reasons we've discussed here in the past few
weeks.

For all the same reasons I don't think it's a good idea to now rush in
a few edits, just a few days before the 4.19 release. In my
experience, and I've discussed code of conducts and their enforcement
for years even before we implemented the fd.o/dri-devel one, mailing
lists aren't the best place to have this discussion. Definitely not
under the time pressure of just a few days to get it all sorted. I
hope that we can have these discussiones at the maintainer summit and
kernel summit/plumbers, and will have more clarity in a few weeks
(probably more likely months).

But I also understand that there's lots of people (me included) who
don't want to ship a release with the code of conduct in it's current
in-between state. I think adding a disclaimer at the top, along the
lines of

"Please note that this code of conduct and it's enforcement are still
under discussion."

would make this clear and ameliorate the concerns from many people
about the open questions we still have, at least for now. This would
give us the time to discuss all the details properly and with all due
deliberation. I'm travelling next week, so not the right guy to push
this, but I'd be happy to ack such a patch (or something along the
same lines). I also believe that this statement is undisputed enough
that we can gather widespread support for it in the few days left
until 4.19 ships to make it happen.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
