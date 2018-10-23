Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3933B7A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 04:16:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0078.hostedemail.com
	[216.40.44.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDEB3E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 04:16:25 +0000 (UTC)
Message-ID: <23e41205115d317908c63d37a20ee316b44a8404.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <greg@kroah.com>, James Bottomley
	<James.Bottomley@hansenpartnership.com>
Date: Mon, 22 Oct 2018 21:16:20 -0700
In-Reply-To: <20181022211025.GA8911@kroah.com>
References: <1540066514.3464.22.camel@HansenPartnership.com>
	<20181022211025.GA8911@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [GIT PULL] code of conduct fixes for 4.19-rc8
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-10-22 at 22:10 +0100, Greg Kroah-Hartman wrote:
> On Sat, Oct 20, 2018 at 01:15:14PM -0700, James Bottomley wrote:
> > This is the series of patches which has been discussed on both ksummit-
> > discuss and linux-kernel for the past few weeks.  As Shuah said when
> > kicking off the process, it's designed as a starting point for the next
> > phase of the discussion, not as the end point, so it's only really a
> > set of minor updates to further that goal.
> > 
> > The merger of the three patches to show the combined effect is attached
> > below.  However, Greg recently posted the next phase of the discussion,
> > so people will be asking what the merger of the series looks like. 
> > Ignoring the non-CoC documents, I think it looks like this
> 
> Sorry for not responding sooner for this, travel and the meeting today
> took up my time.
> 
> Anyway, as we discussed today in the Maintainers summit, let's leave the
> Code of Conduct text alone for now.  It matches what "upstream" has with
> the exception of removing that one paragraph.  If you have issues with
> the wording in it, please work with upstream to fix the issues there as
> hundreds of other projects will benefit with your changes if they are
> really needed.

Given the different development models, that's not
a very compelling argument.

As James Bottomley has suggested multiple times,
I'd much rather kernel development use the debian
code of conduct verbatim than even this modified one.

https://www.debian.org/code_of_conduct
