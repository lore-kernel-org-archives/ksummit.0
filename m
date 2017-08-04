Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ED6F7955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 05:08:23 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B0AC14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 05:08:23 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id c65so797333pfl.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 03 Aug 2017 22:08:23 -0700 (PDT)
Date: Fri, 4 Aug 2017 14:08:36 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20170804050836.GB6084@jagdpanzerIV.localdomain>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804013010.GA425@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170804013010.GA425@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (08/03/17 18:30), Greg KH wrote:
[..]
> > There's a few problems here.  One is that the people who would really
> > review the ABI might not even notice until step 5 or 6 or so.  Another
> > is that it takes some time for userspace to get experience with a new
> > ABI.
> > 
> > I'm wondering if there are other models that could work.  I think it
> > would be nice for us to be able to land a kernel in Linus tree and
> > still wait a while before stabilizing it.  Rust, for example, has a
> > strict policy for this that seems to work quite well.
> 
> What does Rust do here?

I think Andy meant how Rust tags all of its features:

...

    #[stable(feature = "rust1", since = "1.0.0")]
    fn finish(&self) -> u64;

    /// Writes some data into this `Hasher`.
    ///
    /// # Examples
    ///
    /// ```
    /// use std::collections::hash_map::DefaultHasher;
    /// use std::hash::Hasher;
    ///
    /// let mut hasher = DefaultHasher::new();
    /// let data = [0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef];
    ///
    /// hasher.write(&data);
    ///
    /// println!("Hash is {:x}!", hasher.finish());
    /// ```
    #[stable(feature = "rust1", since = "1.0.0")]
    fn write(&mut self, bytes: &[u8]);

    /// Writes a single `u8` into this hasher.
    #[inline]
    #[stable(feature = "hasher_write", since = "1.3.0")]
    fn write_u8(&mut self, i: u8) {
        self.write(&[i])
    }
    /// Writes a single `u16` into this hasher.
    #[inline]
    #[stable(feature = "hasher_write", since = "1.3.0")]
    fn write_u16(&mut self, i: u16) {
        self.write(&unsafe { mem::transmute::<_, [u8; 2]>(i) })
    }


   #[unstable(feature = "sip_hash_13", issue = "34767")]
   #[allow(deprecated)]
   pub use self::sip::{SipHasher13, SipHasher24};

...

	-ss
