Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB5B7B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:07:42 +0000 (UTC)
Received: from outbound3.ore.mailhop.org (erouter8.ore.mailhop.org
	[54.187.218.212])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id BE0BD195
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:07:41 +0000 (UTC)
Date: Fri, 10 Jul 2015 13:07:39 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20150710130739.GT23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708140727.GH23515@io.lakedaemon.net>
	<trinity-9a36fcd4-7739-40a7-b5f9-0ecf88d0a331-1436383797204@3capp-gmx-bs35>
	<20150708221836.GN23515@io.lakedaemon.net>
	<20150709150938.GF4265@tuxdriver.com>
	<20150709174535.GB32448@roeck-us.net>
	<20150709180845.GG4265@tuxdriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709180845.GG4265@tuxdriver.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 02:08:46PM -0400, John W. Linville wrote:
> I guess the suggestion becomes a deeper maintainer hierarchy where
> maintainers only pull from sub-maintainers, and sub-maintainers handle
> individual patches and smaller pull requests from contributors.
> This is essentially the model used for wireless.  That introduces
> the problem of increased patch merge latency, for which I have no
> good suggestions...

We haven't found that to be a problem in mvebu/arm-soc.  It does
increase the lead time a bit.  We stop accepting patches for the coming
merge window around -rc5/6 or so.  Judicious use of linux-next gives
sub-trees good coverage before landing in arm-soc.

I wouldn't advise adding another layer to that tree though.  Rather, as
I said in my other email, co-maintaining with lead rotation works well.

thx,

Jason.
