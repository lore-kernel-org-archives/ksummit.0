Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7DB3623DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 10:56:56 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5511884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 10:56:55 +0000 (UTC)
Date: Mon, 8 Jul 2019 12:47:16 +0200
From: Jan Kara <jack@suse.cz>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190708104716.GA20507@quack2.suse.cz>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
	<20190706171724.GA12534@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190706171724.GA12534@kunai>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

On Sat 06-07-19 19:17:24, Wolfram Sang wrote:
> > Right now, everything is built on trust and it will continue to be after
> > we will demand to add extra sentence. It means that we don't fully trust
> > in Reviewed-by of one time contributors now and we won't trust in their
> > description of their Reviewed-by either.
> 
> Per default, I do trust a new contributor to have done the review. I
> don't want this extra sentence as a proof of that.
> 
> The "problem" with a new reviewer is that I don't know if all aspects of
> a patch have been reviewed or just a subset. Actually, this holds true
> for people I do know just the same way. If a get a Rev-by from Linus
> Walleij I am extremly sure the GPIO parts have been throughly checked.
> But I still don't know if he had time to check e.g. the locking or not.
> There is a huge difference if I get three plain Rev-by or three Rev-by
> saying "I did check <xy> but not the media parts".

There are two things here: If I review a patch and I'm not confident I did
a good job for some parts (because I didn't have time or I just don't know
that part of the kernel), then I should write that to the reply with
Reviewed-by tag. That's IMHO a good rule but I don't think you can enforce
it in any way. You can just ask people that do reviews for your subsystem
if you think they're omitting this.

The second thing is that if human doesn't know something, then he/she has
a tendency to underestimate how much he/she doesn't know (this even has a
psychological term "cognitive bias"). So the self-evaluation of "how good is
my review" is always going to be subjective and it is upto maintainer to
judge what is the value of the review.

To give an exaple, Ted Tso (ext4 maintainer) tends to just ignore "empty
Reviewed-by" replies from people that haven't built enough credit in the
kernel community by actually finding bugs with their reviews...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
