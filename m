Return-Path: <SRS0=Mgfk=HY=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A84BB11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 16:38:07 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 74E7BF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 16:38:07 +0000 (UTC)
Date: Sat, 5 May 2018 09:37:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20180505163756.GC7746@kroah.com>
References: <8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org>
	<20180504174055.GF4649@kroah.com>
	<20180504211317.GK29205@thunk.org>
	<1525469881.4114.5.camel@HansenPartnership.com>
	<20180504215111.GX18390@sasha-vm>
	<20180504233542.GM29205@thunk.org> <20180505042356.GA24575@1wt.eu>
	<878t8y8zk8.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878t8y8zk8.fsf@xmission.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Willy Tarreau <w@1wt.eu>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, May 05, 2018 at 12:02:47AM -0500, Eric W. Biederman wrote:
> So the way I use headers today is:
> Cc: stable@vger.kernel.org
> Fixes: sha1hash "commit subject"

And that makes my life _so_ much easier.  The Fixes: tag is great
(thanks James!), I have scripts that I use to track if a fix was applied
to a stable tree to know if it needs to go into that branch as well.
Without that, the "# 4.9" marking just doesn't work, as it doesn't tell
me if that commit got backported to 4.4.y as well.  I used to do that
type of detection by hand, but automating it is so much better and I
miss less patches that way.

Anyway, just my two cents, let's try to keep this simple for both
maintainers, and stable developers, if at all possible.  I think what we
have now works well, but if people think the documentation should be
cleaned up, great, send patches :)

thanks,

greg k-h
