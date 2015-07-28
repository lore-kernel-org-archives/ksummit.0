Return-Path: <pjones@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36EF2268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:47:35 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C39F979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:47:34 +0000 (UTC)
Date: Tue, 28 Jul 2015 14:47:30 -0400
From: Peter Jones <pjones@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150728184730.GA22263@redhat.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096326.26913.180.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1438096326.26913.180.camel@infradead.org>
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org,
	richard@hughsie.com, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 04:12:06PM +0100, David Woodhouse wrote:
> On Tue, 2015-07-28 at 14:36 +0100, David Howells wrote:
> 
> >  (3) If the vendors of firmware blobs supply signatures, should we accept
> >      those instead of or as well as linux-firmware signatures?
> 
> Yes, definitely. And in fact that ties in to separate discussions we've
> been having about how to automatically *obtain* certain firmware
> images, which are signed by Microsoft's AuthentiCode scheme.
> 
> People were talking about how to validate those signatures in userspace
> when we obtain the firmware. But really, they should be carried all the
> way through and validated in the kernel too.

And even past there - if the firmware update is compliant with NIST
SP800-147 (which they really all /should/ be, but we know how that
goes), then the actual blob that gets passed to the firmware still must
be signed with a key trusted by the firmware.

The standard says (this is the summary section, but the whole thing is
only 26 pages):
  
  2. 	 BIOS Update Authentication 
  
  2-A 	 There shall be a Root of Trust for Update (RTU) that contains a
  signature verification algorithm and a key store that includes the
  public key needed to verify the signature on the BIOS update image.  
  
  2-B 	 The key store and the signature verification algorithm shall be
  stored in a protected fashion on the computer system and shall be
  modifiable only using an authenticated update mechanism or a secure
  local update mechanism as outlined in Section 3.1.2.  
  
  2-C 	 The key store in the RTU shall include the public key for
  verifying the signature on a BIOS update image or include the hash
  [FIPS 180-3] of the public key for verifying the signature on a BIOS
  update image that includes the public key. In the latter case, the
  update mechanism shall ensure that the hash of the public key provided
  with the BIOS update image appears in the key store before using the
  provided public key to verify the signature on the BIOS update image.
   
  
  2-D 	 BIOS images shall be signed in conformance with NIST SP 800-89,
  Recommendation for Obtaining Assurances for Digital Signature
  Applications [SP800-89], using an approved digital signature algorithm
  as specified in NIST FIPS 186-3, Digital Signature Standard
  [FIPS186-3], that provides at least 112 bits of security strength, in
  accordance with NIST SP 800-131A, Transitions: Recommendation for
  Transitioning the Use of Cryptographic Algorithms and Key Lengths
  [SP800-131A].  
  
  2-E 	 The authenticated update mechanism shall ensure that the BIOS
  update image has been digitally signed and that the digital signature
  can be verified using one of the keys in the key store in the RTU
  before updating the BIOS.  

(elsewhere it defines BIOS quite broadly.)

Now, of course this is a NIST "Recommendations" "Special Publication",
not an actual National Standard or ISO document or anything else, but if
you ask e.g. Dell or Insyde or others if their Capsule updates are
compliant, many of them are.

TBH I'm not sure we shouldn't put up a big disclaimer that says you
aren't allowed be using our update system unless they are.

-- 
        Peter
