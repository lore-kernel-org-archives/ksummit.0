Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E323469D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 17:40:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF73A6CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 17:40:32 +0000 (UTC)
Message-ID: <1538934030.4010.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 07 Oct 2018 10:40:30 -0700
In-Reply-To: <CAKMK7uFvmXtk=WiZJxGrzQQD1RHv7srA-_e8KdwXZ9Kn5rcmiQ@mail.gmail.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<CAKMK7uFvmXtk=WiZJxGrzQQD1RHv7srA-_e8KdwXZ9Kn5rcmiQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Sun, 2018-10-07 at 19:11 +0200, Daniel Vetter wrote:
> Hi James,
> 
> On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > We've had several threads discussing potential changes to the code
> > of
> > conduct but Mauro is the only person to have proposed an actual
> > patch.
> > In order to move the debate on, I'm presenting two patches, one to
> > fix
> > the email problem Mauro identified and the other to strip the
> > enforcement section pending community discussion as Shuah
> > suggested.
> > 
> > I'll take responsibility for collecting any tags people want to add
> > (review/ack/sign off, etc) and sending the patch in as a signed
> > pull
> > request before 4.19 final if they get enough community support.
> > 
> > Note, I've sent both patches in as a series to facilitate review
> > and
> > discussion, but they are separable if one is looked on with less
> > favour
> > than the other.
> > 
> > It was also a bit unclear which list to send this to, but I finally
> > settled on linux-kernel as the catch all and ksummit-discuss since
> > that's where most of the current discussion is.  I can add other
> > lists
> > as people suggest them.
> 
> Personally I'm not happy at all with how the new code of conduct was
> rushed in, least because I still don't understand why it happened,
> but also for all the other reasons we've discussed here in the past
> few weeks.
> 
> For all the same reasons I don't think it's a good idea to now rush
> in a few edits, just a few days before the 4.19 release. In my
> experience, and I've discussed code of conducts and their enforcement
> for years even before we implemented the fd.o/dri-devel one, mailing
> lists aren't the best place to have this discussion. Definitely not
> under the time pressure of just a few days to get it all sorted. I
> hope that we can have these discussiones at the maintainer summit and
> kernel summit/plumbers, and will have more clarity in a few weeks
> (probably more likely months).
> 
> But I also understand that there's lots of people (me included) who
> don't want to ship a release with the code of conduct in it's current
> in-between state. I think adding a disclaimer at the top, along the
> lines of
> 
> "Please note that this code of conduct and it's enforcement are still
> under discussion."

I don't disagree with the position, but eliminating our old code of
conduct in favour of another we cast doubt on with this disclaimer
effectively leaves us with nothing at all, which seems to be a worse
situation.  In that case, I think reverting the CoC commit
(8a104f8b5867c682) and then restarting the replacement process is
better than adding a disclaimer to the new one.

My preference is to try to fix what we have instead of starting over,
but it's not a strong one, so if people want to go for the revert
instead of the amendment, I'd be happy to redo the patch series with
that.

James


> would make this clear and ameliorate the concerns from many people
> about the open questions we still have, at least for now. This would
> give us the time to discuss all the details properly and with all due
> deliberation. I'm travelling next week, so not the right guy to push
> this, but I'd be happy to ack such a patch (or something along the
> same lines). I also believe that this statement is undisputed enough
> that we can gather widespread support for it in the few days left
> until 4.19 ships to make it happen.
> 
> Thanks, Daniel
