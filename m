Return-Path: <jgunthorpe@obsidianresearch.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 719C787D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:37:55 +0000 (UTC)
Received: from quartz.orcorp.ca (quartz.orcorp.ca [184.70.90.242])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 096EF20397
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 18:37:55 +0000 (UTC)
Date: Tue, 7 Oct 2014 12:02:09 -0600
From: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
To: Stefan Berger <stefanb@linux.vnet.ibm.com>
Message-ID: <20141007180209.GD10432@obsidianresearch.com>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
	<CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
	<543428E1.7050702@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <543428E1.7050702@linux.vnet.ibm.com>
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

On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:

> Why add the complexity of swapping of authenticated sessions and keys 
> into the kernel if you can handle this in userspace? You need a library 
> that is aware of the number of key slots and slots for sessions in the 
> TPM and swaps them in at out when applications need them. Trousers is 
> such a library that was designed to cope with the limitations of the 
> device and make its functionality available to all applications that 
> want to access it.

How does trousers work with the kernel when the kernel is also using
TPM key slots for IMA/keyring/whatever?

Jason
