Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 404437AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:58:36 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3A92299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:58:35 +0000 (UTC)
Date: Thu, 3 May 2018 14:58:28 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180503185828.GG29205@thunk.org>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<877eol808s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877eol808s.fsf@intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 02:08:51PM +0300, Jani Nikula wrote:
> On Tue, 01 May 2018, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> > Post -rc3 or -rc4, in my opinion bug fixes should wait until the next
> > merge window before they get merged at all.
> 
> What are -rc5 and later for then if not bug fixes? Baffled.

Regression fixes?

Note that if people stopped introducing regressions to the kernel, we
might actually be able to release the final version after -rc6 or even
earlier.

There's nothing which says that we MUST have -rc7, -rc8, -rc9
releases.  If we were actually disciplined in our testing and in what
we push into Linus's tree, we might actually be able to go to a
two-month release cycle, or perhaps even slightly shorter.

But if people insist on trying to fix bugs, and those bugs fixes
introduce regressions, then we end up with a longer release cycle,
which causes people to want to stuck more bug fixes, or worse, even
some feature commits late into the development cycle, and it becomes a
vicious cycle with releases taking longer and longer.

	  	  	    	    	 - Ted
