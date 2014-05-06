Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 242F09A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:20:04 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE9EB20254
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:20:03 +0000 (UTC)
Date: Tue, 6 May 2014 16:19:59 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140506201959.GD5012@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5252732.F3YIzHDqI3@wuerfel>
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 08:20:47PM +0200, Arnd Bergmann wrote:
> Medical equipment (and I assume military, which is often in the same
> category) is probably a big thing. I remember we had a big discussion
> about a product at a former employer when a customer asked for support
> beyond 2038. I think we ended up saying that the hardware is fine but
> no supported distro would handle this.

The question for the kernel summit is what sort of solutions can we
suggest where we as kernel developers could help provide a solution
for this problem?

If the answer is "the kernel is fine (or could be trivially made
fine)" but the problems are all at the glibc and/or distro level, then
it's a problem, but I'm not sure we'd be able to make progress on
solving it in this venue.

					- Ted
