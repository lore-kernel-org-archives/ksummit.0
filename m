Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 09307918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 18:20:52 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C712201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 18:20:51 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 06 May 2014 20:20:47 +0200
Message-ID: <5252732.F3YIzHDqI3@wuerfel>
In-Reply-To: <536921B5.8090100@linaro.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: John Stultz <john.stultz@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 06 May 2014 10:53:57 John Stultz wrote:
> On 05/06/2014 05:57 AM, Theodore Ts'o wrote:
> > I suspect the only real way of dealing with the problem for 32-bit
> > architectures is to consider doing a major version bump for all shared
> > libraries, and for a while, 32-bit distributions might have to ship
> > two versions of all of the more popular shared libraries.
> ...
> > OTOH, if the main issue is "industrial control and security systems"
> > as stated in the original problem description,, I very much doubt they
> > would need GNOME shared libraries.  :-)
> 
> Well, there's also things like in-car-infotainment systems (which would
> annoy future car collectors should they stop working), which may require
> GUI toolkits. But I suspect the most problematic cases will be embedded
> systems in the literal sense of "embedded in the wall".

Medical equipment (and I assume military, which is often in the same
category) is probably a big thing. I remember we had a big discussion
about a product at a former employer when a customer asked for support
beyond 2038. I think we ended up saying that the hardware is fine but
no supported distro would handle this.

	Arnd
