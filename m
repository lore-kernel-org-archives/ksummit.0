Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CC2169A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:06:05 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6692320259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:06:05 +0000 (UTC)
Date: Fri, 9 May 2014 11:05:59 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20140509150559.GB15523@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
	<20140507020743.GA6461@thunk.org> <536A6D43.6020300@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536A6D43.6020300@linaro.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 07, 2014 at 10:28:35AM -0700, John Stultz wrote:
> 
> Do you have a sense of who might be a good glibc contact for this sort
> of thing?

I'm not that familiar with the internals of the glibc project post
Uli, but I'd suggest asking Roland McGrath and DaveM to start.

> And yes, When I ran into Thomas at lsf-mm, we talked about splitting the
> duty here, with me bringing it up at Kernel Summit as Thomas cannot
> attend, and since I cannot attend Plumbers this year having Thomas
> covering it there.

Excellent!

					- Ted
