Return-Path: <jarkko.sakkinen@linux.intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E16DC87D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 19:22:25 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9682520253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Oct 2014 19:22:25 +0000 (UTC)
Date: Tue, 7 Oct 2014 22:22:10 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Stefan Berger <stefanb@linux.vnet.ibm.com>
Message-ID: <20141007192210.GB31645@intel.com>
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
Subject: Re: [Ksummit-discuss] [TrouSerS-tech] TPM MiniSummit @ LinuxCon
 Europe
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:
> On 09/23/2014 12:42 PM, Andy Lutomirski wrote:
> >On Sep 22, 2014 2:07 AM, "Peter Huewe" <PeterHuewe@gmx.de> wrote:
> >>Hi,
> >>
> >>I would like to 'invite' all interested parties in a short TPM minisummit where we can discuss the following hot topics of the TPM subsystem over a beer or two:
> >>  - State of the TPM Subsystem
> >>  - De-/Initialization Mess
> >>  - Devm'ification
> >>  - Testing
> >>  - TPM 2.0 Support
> >>  - Dependencies / interaction with other subsystems (e.g. keyring / IMA)
> >>  - Status of old 1.1b TPM drivers, deprecation plans
> >>  - ...
> >>
> >I am unlikely to be there, but I have a feature request / food for thought:
> >
> >Using a mandatory userspace daemon (e.g. trousers) for TPM access
> >sucks.  Might it be possible to teach the kernel to handle context
> >save and restore and let multiple processes open the device at once?
> >Then a daemon wouldn't be necessary.
> 
> Why add the complexity of swapping of authenticated sessions and keys into
> the kernel if you can handle this in userspace? You need a library that is
> aware of the number of key slots and slots for sessions in the TPM and swaps
> them in at out when applications need them. Trousers is such a library that
> was designed to cope with the limitations of the device and make its
> functionality available to all applications that want to access it.

One justification might be that kernel is also using TPM? TrouSerS can
not manage session for kernel internal use.

>    Stefan

/Jarkko
