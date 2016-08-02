Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5AD592B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:37:37 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AAD82C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:37:37 +0000 (UTC)
Date: Tue, 2 Aug 2016 20:37:34 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160802203444-mutt-send-email-mst@kernel.org>
References: <20160802172326.GA25195@redhat.com>
	<CALCETrWyHZ5+mZnzgm_j=8N3-thznVmxrov1N7Lns45w2V0X8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWyHZ5+mZnzgm_j=8N3-thznVmxrov1N7Lns45w2V0X8A@mail.gmail.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] late self-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 02, 2016 at 10:28:43AM -0700, Andy Lutomirski wrote:
> On Tue, Aug 2, 2016 at 10:23 AM, Michael S. Tsirkin <mst@redhat.com> wrote:
> > Hi folks!
> >
> > Likely too late, but oh well.
> > I would like to self-nominate for kernel summit this year.
> >
> > I am the maintainer of the virtio subsystem, and within KVM, of the PC
> > and PCI subsystems.  Intelnally within Red Hat I'm a tech lead for the
> > team handling the networking for VMs.
> >
> > I would like to participate in self-hardening to see whether
> > hypervisor extensions (like e.g. kernel guard technology)
> > can benefit that project,
> 
> This isn't quite on-topic, but I suggested something that I think
> would be useful last year (possibly off-list -- I don't remember):
> 
> On x86 with VMX, the EPT page tables have separate R, W, and X bits.
> If a hypervisor were to limit the guest physical address space to the
> lower half (high bit always clear) and then alias all of it with the
> high guest physical address bit set and R clear, then the guest could
> use the high physical address bit as an effective R bit.  That would
> allow PROT_WRITE, PROT_EXEC, and PROT_WRITE|PROT_EXEC mappings to work
> without granting read access.
> 
> Doing this would provide some protection against attacks that use a
> wild read to scan for code or data structures at otherwise
> unpredictable addresses or to blindly search for ROP gadgets.

Thanks - I expect we'll discuss this topic with other kvm folks quite a
bit on the kvm forum end of August, as well.

-- 
MST
