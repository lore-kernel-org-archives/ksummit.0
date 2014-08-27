Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48154A47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Aug 2014 23:05:31 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C50DD20298
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Aug 2014 23:05:30 +0000 (UTC)
Date: Wed, 27 Aug 2014 19:05:27 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140827230527.GX11317@thunk.org>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<53FB17A7.9090209@hitachi.com>
	<alpine.LNX.2.00.1408251304260.2992@pobox.suse.cz>
	<53FC1A11.1000700@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53FC1A11.1000700@hitachi.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 26, 2014 at 02:24:33PM +0900, Masami Hiramatsu wrote:
> There could be. However, in usual usecases, I guess people will not want
> to unload it. Systemtap or something "additional" module users will
> need to unload modules. (kpatch could be one of them, but I also think
> no one want to remove applied patches anyway.)
> 
> I just tried to show that the kmodule unload is the one who uses
> stop_machine heavily but it is not necessary :)

Right, but if the argument that kmodule unload is slow on huge NUMA
machines is that Rusty submits a patch which gets rid of the support
for module unload entirely, then that would be very sad.  (And
**really** screw over systemtap...)

							- Ted
