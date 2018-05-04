Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5CC022D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:13:26 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEEE614F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:13:25 +0000 (UTC)
Date: Fri, 4 May 2018 17:13:17 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180504211317.GK29205@thunk.org>
References: <CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org>
	<20180504174055.GF4649@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180504174055.GF4649@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 04, 2018 at 10:40:55AM -0700, Greg KH wrote:
> Ugh, what?  I don't understand what you are proposing here, what we have
> today is just fine, what is broken with it?

What we have today is this:

     Cc: stable@kernel.org # 3.11
     Cc: stable@kernel.org # 4.8+
     Cc: stable@kernel.org # 4.8+

Jani was suggesting something documented which doesn't match current
practice.  See commit 8e9b9362266d, which describes something like this:

     Cc: <stable@kernel.org> # .32.x: a1f84a3: sched: Check for idle
     Cc: <stable@kernel.org> # .32.x: 1b9508f: sched: Rate-limit newidle
     Cc: <stable@kernel.org> # .32.x: fd21073: sched: Fix affinity logic

... to specify prereqisite commits needed to backport the commit in
question.  I am proposing that we delete what is in
stable_kernel_rules.rst, because it doesn't match with current
practice.

If it is necessary to explicitly specify prerequisites (as opposed to
having scripts or stable maintainers guess or figure things out
manually), then something like this might be better:

Stable-prereq: DEADBEEF1234: subsystem: bork bork bork....

If it's not necessary, fine.  But we should still delete what is
currently documented in stable_kernel_rules and was introduced in
8e9b9362266d, because it doesn't describe current practice.

						- Ted
