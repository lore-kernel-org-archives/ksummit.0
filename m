Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A720D87D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:59:27 +0000 (UTC)
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F118D201E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:59:26 +0000 (UTC)
Received: by mail-la0-f49.google.com with SMTP id q1so6816743lam.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Oct 2014 11:59:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5434352A.6080403@linux.vnet.ibm.com>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
	<CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
	<543428E1.7050702@linux.vnet.ibm.com>
	<20141007180209.GD10432@obsidianresearch.com>
	<5434352A.6080403@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 7 Oct 2014 11:59:04 -0700
Message-ID: <CALCETrVVSd_pTBP3ghn=oroNqrxPYRev-xcQ+KnF8kcZZiwB7A@mail.gmail.com>
To: Stefan Berger <stefanb@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: keyrings@linux-nfs.org, jarkko.sakkinnen@linux.intel.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Jason Gunthorpe <jgunthorpe@obsidianresearch.com>,
	LSM List <linux-security-module@vger.kernel.org>,
	tpmdd-devel@lists.sourceforge.net,
	James Morris <james.l.morris@oracle.com>,
	linux-ima-devel@lists.sourceforge.net, trousers-tech@lists.sourceforge.net
Subject: Re: [Ksummit-discuss] [tpmdd-devel] [TrouSerS-tech] TPM MiniSummit
 @ LinuxCon Europe
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 7, 2014 at 11:47 AM, Stefan Berger
<stefanb@linux.vnet.ibm.com> wrote:
> On 10/07/2014 02:02 PM, Jason Gunthorpe wrote:
>>
>> On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:
>>
>>> Why add the complexity of swapping of authenticated sessions and keys
>>> into the kernel if you can handle this in userspace? You need a library
>>> that is aware of the number of key slots and slots for sessions in the
>>> TPM and swaps them in at out when applications need them. Trousers is
>>> such a library that was designed to cope with the limitations of the
>>> device and make its functionality available to all applications that
>>> want to access it.
>>
>> How does trousers work with the kernel when the kernel is also using
>> TPM key slots for IMA/keyring/whatever?
>
>
> IIRC it only uses a single key slot and swaps all keys in and out of that
> one. If the kernel was to fill up all key (and sessions) slots, TSS would
> probably not work anymore.
>
> Another argument for the TSS is that you also wouldn't want applications to
> swap out each others keys and sessions and leave them out or assume that
> they would always cleanup if they do not currently need them.

That argument seems backwards.  If you're worried about applications
(or trousers itself!) failing to clean up, then shouldn't the kernel
driver clean up orphaned key slots itself?

Also, what protects the kernel from having slot 0 get stomped on or,
worse, inappropriately used by a misbehaving or malicious user
program?  Is the authorization session mechanism really secure against
intentional abuse by users of the same machine?

--Andy
