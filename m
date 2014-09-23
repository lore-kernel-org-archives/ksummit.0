Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 67041B09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Sep 2014 16:42:56 +0000 (UTC)
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B48920274
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Sep 2014 16:42:55 +0000 (UTC)
Received: by mail-la0-f49.google.com with SMTP id pn19so9095005lab.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Sep 2014 09:42:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 23 Sep 2014 09:42:33 -0700
Message-ID: <CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
To: Peter Huewe <PeterHuewe@gmx.de>
Content-Type: text/plain; charset=UTF-8
Cc: keyrings@linux-nfs.org, jarkko.sakkinnen@linux.intel.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	LSM List <linux-security-module@vger.kernel.org>,
	tpmdd-devel@lists.sourceforge.net,
	James Morris <james.l.morris@oracle.com>,
	linux-ima-devel@lists.sourceforge.net, trousers-tech@lists.sourceforge.net
Subject: Re: [Ksummit-discuss] TPM MiniSummit @ LinuxCon Europe
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sep 22, 2014 2:07 AM, "Peter Huewe" <PeterHuewe@gmx.de> wrote:
>
> Hi,
>
> I would like to 'invite' all interested parties in a short TPM minisummit where we can discuss the following hot topics of the TPM subsystem over a beer or two:
>  - State of the TPM Subsystem
>  - De-/Initialization Mess
>  - Devm'ification
>  - Testing
>  - TPM 2.0 Support
>  - Dependencies / interaction with other subsystems (e.g. keyring / IMA)
>  - Status of old 1.1b TPM drivers, deprecation plans
>  - ...
>

I am unlikely to be there, but I have a feature request / food for thought:

Using a mandatory userspace daemon (e.g. trousers) for TPM access
sucks.  Might it be possible to teach the kernel to handle context
save and restore and let multiple processes open the device at once?
Then a daemon wouldn't be necessary.

There would still be a need for some policy (e.g. who can clear the
SRK), but that should be manageable.  Maybe there should be two device
nodes.  /dev/tpm_unpriv would be fully virtualized for access by
multiple processes, but it would only allow use of the key hierarchy
and read access to PCRs.  /dev/tpm_priv would allow NV access, PCR
writes, SRK clears, etc.

--Andy

>
> Please register your interest by filling out this doodle
>  http://doodle.com/q9ezcrivhqrktw6u
>
> I'm not sure if I can get any funding for the summit... but maybe I can arrange something.
>
>
> Also I'm trying to bring along some TPM samples from my employer if possible.
>
>
> Thanks
> Peter
>
> p.s.: experienced kernel developers welcome :)
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
