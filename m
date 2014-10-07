Return-Path: <stefanb@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E72287D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:47:12 +0000 (UTC)
Received: from e36.co.us.ibm.com (e36.co.us.ibm.com [32.97.110.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A223420259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:47:11 +0000 (UTC)
Received: from /spool/local
	by e36.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<stefanb@linux.vnet.ibm.com>; Tue, 7 Oct 2014 12:47:11 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 1B1EF19D8047
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 12:35:53 -0600 (MDT)
Received: from d03av05.boulder.ibm.com (d03av05.boulder.ibm.com [9.17.195.85])
	by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id s97Il9Ns25100522
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 7 Oct 2014 20:47:09 +0200
Received: from d03av05.boulder.ibm.com (localhost [127.0.0.1])
	by d03av05.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s97Il8EO013929 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 7 Oct 2014 12:47:08 -0600
Message-ID: <5434352A.6080403@linux.vnet.ibm.com>
Date: Tue, 07 Oct 2014 14:47:06 -0400
From: Stefan Berger <stefanb@linux.vnet.ibm.com>
MIME-Version: 1.0
To: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
	<CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
	<543428E1.7050702@linux.vnet.ibm.com>
	<20141007180209.GD10432@obsidianresearch.com>
In-Reply-To: <20141007180209.GD10432@obsidianresearch.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: keyrings@linux-nfs.org, jarkko.sakkinnen@linux.intel.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

On 10/07/2014 02:02 PM, Jason Gunthorpe wrote:
> On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:
>
>> Why add the complexity of swapping of authenticated sessions and keys
>> into the kernel if you can handle this in userspace? You need a library
>> that is aware of the number of key slots and slots for sessions in the
>> TPM and swaps them in at out when applications need them. Trousers is
>> such a library that was designed to cope with the limitations of the
>> device and make its functionality available to all applications that
>> want to access it.
> How does trousers work with the kernel when the kernel is also using
> TPM key slots for IMA/keyring/whatever?

IIRC it only uses a single key slot and swaps all keys in and out of 
that one. If the kernel was to fill up all key (and sessions) slots, TSS 
would probably not work anymore.

Another argument for the TSS is that you also wouldn't want applications 
to swap out each others keys and sessions and leave them out or assume 
that they would always cleanup if they do not currently need them.

Regards,
    Stefan
