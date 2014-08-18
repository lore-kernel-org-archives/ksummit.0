Return-Path: <miklos@szeredi.hu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2887C932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 08:35:41 +0000 (UTC)
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09F671F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 08:35:39 +0000 (UTC)
Received: by mail-qa0-f46.google.com with SMTP id v10so4099391qac.33
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 01:35:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrW53hiZpFH4J+UsE_tX6i_cTmfth5xHtOzw8uPGGEbf4Q@mail.gmail.com>
References: <87lhqmxyxn.fsf@x220.int.ebiederm.org>
	<20140818040014.GA10623@mail.hallyn.com>
	<CALCETrW53hiZpFH4J+UsE_tX6i_cTmfth5xHtOzw8uPGGEbf4Q@mail.gmail.com>
Date: Mon, 18 Aug 2014 10:35:39 +0200
Message-ID: <CAJfpegsoEGG2H1pFdBLAaosJhE8qbR69C9yikQHTd_egE001DA@mail.gmail.com>
From: Miklos Szeredi <miklos@szeredi.hu>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: Al Viro <viro@zeniv.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [Ksummit-discuss] Mount API?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

FYR here's Al's summary of the subject, which I think is a good starting point:

      "Frankly, I wonder if we are trying to pack too much into one
syscall - not just in terms of overloading it (that much is obvious),
but in terms of trying to cram a sequence of syscalls into one.  If
we end up introducing new API(s) for mount(), it's probably worth
considering something like this:
        * open a connection to fs type driver, get a descriptor
        * use normal IO syscalls (usually just write(2)) on that
descriptor to tell fs type driver what do we want.  If any kind of
authentication is needed, that's the time for doing it
        * attach the thing identified by that descriptor to mountpoint"

Thanks,
Miklos
