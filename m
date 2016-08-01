Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6B2A8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:29:23 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36EB81EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:29:23 +0000 (UTC)
Date: Mon, 1 Aug 2016 19:29:20 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20160801172920.GU3296@wotan.suse.de>
References: <20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 31, 2016 at 11:20:08AM -0700, Andy Lutomirski wrote:
> If IMA doesn't want or need to verify the purpose of the loaded file, fine.

So other than origin you are indicating a proper LSM that would want to vet firmware
should want purpose ? Is that right? If so I'd like to understand this suggestion
a bit better given we already have. So we have:

#define __kernel_read_file_id(id) \                                             
        id(UNKNOWN, unknown)            \                                       
        id(FIRMWARE, firmware)          \                                       
        id(FIRMWARE_PREALLOC_BUFFER, firmware)  \                               
        id(MODULE, kernel-module)               \                               
        id(KEXEC_IMAGE, kexec-image)            \                               
        id(KEXEC_INITRAMFS, kexec-initramfs)    \                               
        id(POLICY, security-policy)             \                               
        id(MAX_ID, )   

                                                                                
#define __fid_enumify(ENUM, dummy) READING_ ## ENUM,                            
#define __fid_stringify(dummy, str) #str,                                       
                                                                                
enum kernel_read_file_id {                                                      
        __kernel_read_file_id(__fid_enumify)                                    
};

extern int kernel_read_file_from_path(char *, void **, loff_t *, loff_t,        
                                      enum kernel_read_file_id);

Are you saying FIRMWARE id is not sufficient ? What would be an example
purpose be here for FIRMWARE ?

  Luis
