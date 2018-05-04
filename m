Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E56D2D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:38:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1D05F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:38:03 +0000 (UTC)
Message-ID: <1525469881.4114.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>
Date: Fri, 04 May 2018 14:38:01 -0700
In-Reply-To: <20180504211317.GK29205@thunk.org>
References: <CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org> <20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org> <20180504174055.GF4649@kroah.com>
	<20180504211317.GK29205@thunk.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2018-05-04 at 17:13 -0400, Theodore Y. Ts'o wrote:
> If it's not necessary, fine.  But we should still delete what is
> currently documented in stable_kernel_rules and was introduced in
> 8e9b9362266d, because it doesn't describe current practice.

It definitely doesn't seem to describe current practice.  It looks like
it got applied because the commit description bears a somewhat strange
relation to the actual text that was added:  The commit talks about the
 original script that used to forward to stable (although it got me and
hpa confused) which seems to refer to a tiny deletion and the rest is
adding an Ingo one off proposal for dependencies.

For the record: Greg runs his own script now and I'm not involved.

Current process (at least from the SCSI centric view) is that if we
screw up and forward a commit with missing dependencies to stable via a
cc: tag, it won't apply and Greg tells us to fix it, which we do.  That
seems to be an adequately functional process for the odd times we run
into this.

James
