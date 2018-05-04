Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4725629
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:51:17 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0125.outbound.protection.outlook.com [104.47.36.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A0727F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 21:51:16 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Fri, 4 May 2018 21:51:14 +0000
Message-ID: <20180504215111.GX18390@sasha-vm>
References: <20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org> <20180504174055.GF4649@kroah.com>
	<20180504211317.GK29205@thunk.org>
	<1525469881.4114.5.camel@HansenPartnership.com>
In-Reply-To: <1525469881.4114.5.camel@HansenPartnership.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4E617C543807154F9DBC199DF9BA7781@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

On Fri, May 04, 2018 at 02:38:01PM -0700, James Bottomley wrote:
>On Fri, 2018-05-04 at 17:13 -0400, Theodore Y. Ts'o wrote:
>> If it's not necessary, fine.=A0=A0But we should still delete what is
>> currently documented in stable_kernel_rules and was introduced in
>> 8e9b9362266d, because it doesn't describe current practice.
>
>It definitely doesn't seem to describe current practice.  It looks like
>it got applied because the commit description bears a somewhat strange
>relation to the actual text that was added:  The commit talks about the
> original script that used to forward to stable (although it got me and
>hpa confused) which seems to refer to a tiny deletion and the rest is
>adding an Ingo one off proposal for dependencies.

The usage for something like this is only if a commit that we didn't
previously think would go to stable now has to because it's a dependency
of a new -stable commit, so the expected usage will be pretty small
anyways.

I don't have an objection to moving this to it's own tag. It will make
my scripts somewhat simpler for sure.

>For the record: Greg runs his own script now and I'm not involved.
>
>Current process (at least from the SCSI centric view) is that if we
>screw up and forward a commit with missing dependencies to stable via a
>cc: tag, it won't apply and Greg tells us to fix it, which we do.  That
>seems to be an adequately functional process for the odd times we run
>into this.

Assuming a commit won't apply/fail to build because of dependencies is
really not a safe approach, which I keep getting reminded of quite
often.

See for example this patch:

	https://patchwork.kernel.org/patch/10243707/

It will apply and build, but will fail to boot on a particular flavor=20
of ARMv7, and this is just the obvious failure modes of approaches like
these.

So again, I don't have a an objection to changing the docs or the way
it's being done now, but the new way should make it very easy for folks
to list dependency chains if they want to.=
