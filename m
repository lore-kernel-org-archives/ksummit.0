Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E3DB109C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:16:59 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E35EA8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:16:58 +0000 (UTC)
Date: Tue, 18 Sep 2018 15:16:54 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20180918191654.GA14744@thunk.org>
References: <CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter> <20180918174913.GA22988@kroah.com>
	<CAKdAkRSt7MpTmUFP8WEWPUKWjqUgfS4GhfSu+oT9E4ziDgYgTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKdAkRSt7MpTmUFP8WEWPUKWjqUgfS4GhfSu+oT9E4ziDgYgTg@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tim.Bird@sony.com, ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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

On Tue, Sep 18, 2018 at 11:22:15AM -0700, Dmitry Torokhov wrote:
> > Seriously, it would be good, but no gerrit please...
> 
> Seconded. I swear 75% of time I spend on patch reviews that I do for
> Chrome OS is spent on clicking around UI, not actually commenting on
> the issues I find.

Heh.  I don't know if I'm an outlier, but I actually *like* Gerrit.
(I use it at work for reviewing changes to Google's data center,
Chrome OS, and Android kernels.)

For small changes, being able to directly see the context of a change
via the web UI is really nice.  Also being able to make a comment
in-line where the change is, and then seeing the replies chained off
of it, right next to the code, is also really nice.  I also really
like being able to trivially look at differences between the -v3 and
-v5 version of the commit via the web UI.

It doesn't work as well for large patch series, certainly.  For that
what I tend to do is to download the branch from gerrit into the my
local git repo, and look at all of the changes using standard git
tools (e.g., git grep, git blame, etc.)

So while Gerrit does have some shortcomings, it definitely does have
some things that it does do very well.  For large patch series and for
the sort of things that I need to deal with for upstream development,
I still use e-mail a lot, obviously.  But if we're talking about the
platonic ideal of large-scale distributed development, we shouldn't
dismiss all of Gerrit's functionality out of hand.

Cheers,

						- Ted
