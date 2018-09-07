Return-Path: <SRS0=wPzZ=LV=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60F98D08
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:45:44 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B055623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:45:43 +0000 (UTC)
Date: Thu, 6 Sep 2018 22:45:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20180906224541.27a9c8fe@vmware.local.home>
In-Reply-To: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 6 Sep 2018 19:31:18 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> What do you suggest you do about a patch that is a bug fix? Delay it
> until it has two weeks of testing? Which it won't get, because nobody
> actually runs it until it is merged?

A good statistic to take is to see what found a bug that was caused by
something added after rc5. Was it a bot (then there's credence that
running through linux-next would be helpful). Is it because someone
triggered it because it was in Linus's tree (which means the bug
wouldn't show up until it hit Linus's tree). Or was it something that
was discovered when it got into the distros?

Really, the only testing coverage that a patch gets in linux-next is by
the bots that are run on them. I will agree that the number of bots and
automated tests are getting better. I don't push even late fixes to
Linus without waiting for the zero day bot to give me the OK, because
sometimes it finds a subtle mistake I made, which would embarrass me if
it was found after I pushed it to Linus.

Another issue about having fixes sit in linux-next for some time after
-rc5, is that by that time, linux-next is filled with new development
code waiting for the next merge window. A subtle fix for a bug that
wasn't caught by linux-next in the first place (how else would that bug
still be around by rc5?) is highly likely not to catch a bug with the
fix to that subtle bug.

-- Steve
