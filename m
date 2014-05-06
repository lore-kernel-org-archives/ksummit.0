Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 485F0AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:17:54 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0F7161FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:17:54 +0000 (UTC)
Message-ID: <1399382270.2237.9.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jkosina@suse.cz>
Date: Tue, 06 May 2014 06:17:50 -0700
In-Reply-To: <alpine.LNX.2.00.1405060005290.3969@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
	<CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060005290.3969@pobox.suse.cz>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-06 at 00:08 +0200, Jiri Kosina wrote:
> On Mon, 5 May 2014, Andy Lutomirski wrote:
> 
> > > Tons of interest in this topic here, mostly for the in-memory database
> > > workloads.
> > 
> > Would in-memory databases be happier if there were a way to kexec
> > without losing your data?
> 
> Well, that's basicaly what criu-based aproach is doing. With the drawback 
> that dumping during checkpointing can take a while for large tasks (such 
> as in-memory databases) I guess.

Well, no that's not correct.  You've seen the patches for the pramfs
capsule which is not upstream (and probably won't be now we're looking
at doing something similar with splice).  The idea is basically we do a
zero copy checkpoint by passing pages into some type of capsule which
survives the kexec.  The restore then does a zero copy pull pages out of
the capsule and reattach them, so most of the time is really just the
kexec of the new kernel.

James
