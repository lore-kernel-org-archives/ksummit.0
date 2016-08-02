Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1DA68A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:29:04 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BE52150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:29:04 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id n129so127267788vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 10:29:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160802172326.GA25195@redhat.com>
References: <20160802172326.GA25195@redhat.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 2 Aug 2016 10:28:43 -0700
Message-ID: <CALCETrWyHZ5+mZnzgm_j=8N3-thznVmxrov1N7Lns45w2V0X8A@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Aug 2, 2016 at 10:23 AM, Michael S. Tsirkin <mst@redhat.com> wrote:
> Hi folks!
>
> Likely too late, but oh well.
> I would like to self-nominate for kernel summit this year.
>
> I am the maintainer of the virtio subsystem, and within KVM, of the PC
> and PCI subsystems.  Intelnally within Red Hat I'm a tech lead for the
> team handling the networking for VMs.
>
> I would like to participate in self-hardening to see whether
> hypervisor extensions (like e.g. kernel guard technology)
> can benefit that project,

This isn't quite on-topic, but I suggested something that I think
would be useful last year (possibly off-list -- I don't remember):

On x86 with VMX, the EPT page tables have separate R, W, and X bits.
If a hypervisor were to limit the guest physical address space to the
lower half (high bit always clear) and then alias all of it with the
high guest physical address bit set and R clear, then the guest could
use the high physical address bit as an effective R bit.  That would
allow PROT_WRITE, PROT_EXEC, and PROT_WRITE|PROT_EXEC mappings to work
without granting read access.

Doing this would provide some protection against attacks that use a
wild read to scan for code or data structures at otherwise
unpredictable addresses or to blindly search for ROP gadgets.
