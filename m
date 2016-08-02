Return-Path: <pbonzini@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AA98941
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:00:15 +0000 (UTC)
Received: from mx3-phx2.redhat.com (mx3-phx2.redhat.com [209.132.183.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 38F04B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:00:15 +0000 (UTC)
Date: Tue, 2 Aug 2016 15:00:13 -0400 (EDT)
From: Paolo Bonzini <pbonzini@redhat.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Message-ID: <758189906.13127402.1470164413674.JavaMail.zimbra@redhat.com>
In-Reply-To: <20160802203444-mutt-send-email-mst@kernel.org>
References: <20160802172326.GA25195@redhat.com>
	<CALCETrWyHZ5+mZnzgm_j=8N3-thznVmxrov1N7Lns45w2V0X8A@mail.gmail.com>
	<20160802203444-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] late self-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> > On x86 with VMX, the EPT page tables have separate R, W, and X bits.
> > If a hypervisor were to limit the guest physical address space to the
> > lower half (high bit always clear) and then alias all of it with the
> > high guest physical address bit set and R clear, then the guest could
> > use the high physical address bit as an effective R bit.  That would
> > allow PROT_WRITE, PROT_EXEC, and PROT_WRITE|PROT_EXEC mappings to work
> > without granting read access.
> > 
> > Doing this would provide some protection against attacks that use a
> > wild read to scan for code or data structures at otherwise
> > unpredictable addresses or to blindly search for ROP gadgets.
> 
> Thanks - I expect we'll discuss this topic with other kvm folks quite a
> bit on the kvm forum end of August, as well.

I won't be able to attend kernel summit (I haven't nominated me for this
reason) so I support Michael's presence!

Paolo
