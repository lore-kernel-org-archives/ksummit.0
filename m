Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5846C8CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 23:45:40 +0000 (UTC)
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com [32.97.110.153])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CAB621FB58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 23:45:39 +0000 (UTC)
Received: from /spool/local
	by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Sun, 12 Oct 2014 17:45:39 -0600
Received: from b03cxnp07028.gho.boulder.ibm.com
	(b03cxnp07028.gho.boulder.ibm.com [9.17.130.15])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id BFF6819D8039
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 17:34:19 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id s9CNhROc63766716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Oct 2014 01:43:27 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s9CNjYDA004203 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 17:45:35 -0600
Message-ID: <1413157533.14699.32.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Date: Sun, 12 Oct 2014 19:45:33 -0400
In-Reply-To: <20141007192210.GB31645@intel.com>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
	<CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
	<543428E1.7050702@linux.vnet.ibm.com>
	<20141007192210.GB31645@intel.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: keyrings@linux-nfs.org, jarkko.sakkinnen@linux.intel.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Stefan Berger <stefanb@linux.vnet.ibm.com>,
	Rajiv Andrade <srajiv@linux.vnet.ibm.com>,
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

On Tue, 2014-10-07 at 22:22 +0300, Jarkko Sakkinen wrote: 
> On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:
> > On 09/23/2014 12:42 PM, Andy Lutomirski wrote:
> > >On Sep 22, 2014 2:07 AM, "Peter Huewe" <PeterHuewe@gmx.de> wrote:
> > >>Hi,
> > >>
> > >>I would like to 'invite' all interested parties in a short TPM minisummit where we can discuss the following hot topics of the TPM subsystem over a beer or two:
> > >>  - State of the TPM Subsystem
> > >>  - De-/Initialization Mess
> > >>  - Devm'ification
> > >>  - Testing
> > >>  - TPM 2.0 Support
> > >>  - Dependencies / interaction with other subsystems (e.g. keyring / IMA)
> > >>  - Status of old 1.1b TPM drivers, deprecation plans
> > >>  - ...
> > >>
> > >I am unlikely to be there, but I have a feature request / food for thought:
> > >
> > >Using a mandatory userspace daemon (e.g. trousers) for TPM access
> > >sucks.  Might it be possible to teach the kernel to handle context
> > >save and restore and let multiple processes open the device at once?
> > >Then a daemon wouldn't be necessary.
> > 
> > Why add the complexity of swapping of authenticated sessions and keys into
> > the kernel if you can handle this in userspace? You need a library that is
> > aware of the number of key slots and slots for sessions in the TPM and swaps
> > them in at out when applications need them. Trousers is such a library that
> > was designed to cope with the limitations of the device and make its
> > functionality available to all applications that want to access it.
> 
> One justification might be that kernel is also using TPM? TrouSerS can
> not manage session for kernel internal use.

I had a discussion way back when with Rajiv Andrade, when he was the
maintainer.  Instead of assuming Trousers didn't use up all the slots,
one slot would be reserved for the kernel's use.  Need to check and see
if this was ever implemented.

Mimi
