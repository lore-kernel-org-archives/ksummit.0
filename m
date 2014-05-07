Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D08C875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:19:49 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B60D1FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:19:49 +0000 (UTC)
Date: Wed, 7 May 2014 07:19:46 -0400
From: Jonathan Corbet <corbet@lwn.net>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20140507071946.248bc3ea@lwn.net>
In-Reply-To: <20140507020743.GA6461@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
	<20140507020743.GA6461@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
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

On Tue, 6 May 2014 22:07:43 -0400
Theodore Ts'o <tytso@mit.edu> wrote:

> Something else to consider is whether we would need to have some glibc
> folks present at the kernel summit if we want to discuss it there, and
> whether we should also think about also planning some discussions at
> the Plumber's Conference --- because there will certainly be userspace
> impacts that will need to be taken into account.

In fact, a year 2038 miniconf at Plumbers seems like a good idea if the
right people can be pulled into it.  

jon
