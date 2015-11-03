Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA00190
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 18:09:27 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 98E8C195
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 18:09:27 +0000 (UTC)
Message-ID: <1446574165.6440.18.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 03 Nov 2015 10:09:25 -0800
In-Reply-To: <5638E9F0.9020504@kernel.dk>
References: <1446570155.6440.12.camel@HansenPartnership.com>
	<5638E9F0.9020504@kernel.dk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Stable and delay backports
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-11-03 at 10:08 -0700, Jens Axboe wrote:
> On 11/03/2015 10:02 AM, James Bottomley wrote:
> > I'm still not clear, even after all the discussion, whether there's any
> > value left to annotating the cc to stable with a delay backport.  I'm
> > getting ready to post a fix to our block size calculations which make
> > them completely accurate instead of within 5% like they were before.
> > Technically this is a bug fix because people get distressed even over
> > apparently losing 5% of their space, so it will have to be backported,
> > but the algorithm has increased in complexity, so it would be better to
> > incubate in main line for a while to make sure there are no further
> > complaints.
> >
> > So the question: I think I heard Greg say you're automatically delaying
> > merge window backports anyway, so there's no real need to add a separate
> > delay tag, or is there?
> 
> Or you could just do it manually. Don't mark it stable, get it in 
> mainline. Then send stable@ and email when you feel it's safe, asking 
> them to pickup that commit.

Actually, that's the worst of both worlds because I'd have to remember
there's a patch to backport with no marker.  If I were going to do my
own stable patches, I'd follow the DaveM process because then at least
I'd be collecting all the stable patches into my trees so there'd be
external visibility and a marker for me not to forget.  However, I was
just after low overhead ...

Anyway, I have the answer: do it as before.

James
