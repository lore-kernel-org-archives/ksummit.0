Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BD9DE9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:30:20 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 08B4A1FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:30:19 +0000 (UTC)
Date: Mon, 5 May 2014 15:33:24 -0700
From: Greg KH <greg@kroah.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20140505223324.GA5298@kroah.com>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<5366FBDB.7090705@huawei.com> <20140505134126.GA22287@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140505134126.GA22287@thunk.org>
Cc: Josh Boyer <jwboyer@fedoraproject.org>,
	ksummit-discuss@lists.linuxfoundation.org, lizf.kern@gmail.com
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 05, 2014 at 09:41:26AM -0400, Theodore Ts'o wrote:
> On Mon, May 05, 2014 at 10:47:55AM +0800, Li Zefan wrote:
> > 
> > Yeah, but we can't expect other maintainers to do this. As Greg has been
> > emphasizing, we'd want to add as little burden as possible for subsystem
> > maintainers. With this in mind, focusing on fewer LTS kernels might make
> > sense?
> 
> An LTS kernel becomes important when distributions or manufacturers
> need to depend on one for their stable/enterprise distribution or for
> some product release.  The problem comes when a stable kernel such as
> 3.10 gets declared, but some feature which is badly needed doesn't
> make it into 3.11, say, or at the time when 3.10 gets declared, some
> internal team had already decided to use 3.11.
> 
> So what might help is if companies or distributions who need a LTS
> kernel were willing to disclose that fact ahead of time, and see if
> they can find like-minded associates who also might need a LTS kernel
> around about the same time.  Obviously if a company is willing to
> dedicate resources to maintaining the LTS kernel they should have a
> bit more say about which LTS kernel they would be willing to support.

I spend a lot of time talking to a lot of different companies about what
the next LTS kernel will be.  And almost all of them are willing to give
me this information, so this isn't an issue.

The problem is, I can't please all of the people all of the time.  When
picking just one kernel a year, someone's schedule is not going to
align, and so they have to "go it alone".  Which is just part of the
"game" in doing releases, everyone knows this.

And as for announcing it ahead of time, I'm never going to do that
again, the aftermath was horrid of people putting stuff that shouldn't
be there.  Heck, when people know about what the enterprise kernels are
going to be, they throw stuff into upstream "early", so it's a
well-known pattern and issue.

thanks,

greg k-h
