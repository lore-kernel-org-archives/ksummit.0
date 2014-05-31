Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DADDC988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 02:07:08 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 430B62010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 02:07:08 +0000 (UTC)
Date: Fri, 30 May 2014 22:07:02 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140531020702.GD20492@thunk.org>
References: <20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
	<20140530165646.GZ25041@thunk.org> <538933F1.4030009@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <538933F1.4030009@huawei.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
 kernel developers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, May 31, 2014 at 09:44:17AM +0800, Li Zefan wrote:
> This is similar to my idea in "stable issues" to find a co-maintainer
> for Greg to do this work. While I sugguest to find a experienced and
> trustful person, you sugguest newcomers.
> 
> I share the same concern with David, and I doubt newcompers are
> enthusiastic in doing backport for stable trees.

All I can say is that I've seen it work.  Granted, it was in a
corporate environment, where if the person gets stuck, they can easily
call for help from a teammate at an adjacent desk.  The commits were
also in generally well annotated with testing instructions, and all of
the patches went through a code review process.  And, while these
people may have been newcomers to kernel programming, they had all
passed the Google hiring interview process.

Admittedly, for someone who just shows up on a mailing list, we don't
know as much about their technical capabilities, and how both
accountability and motivation works is slightly different in a work
environment compared to a volunteer/hobbyist setting.

Cheers,

					- Ted
