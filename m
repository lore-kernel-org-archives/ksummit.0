Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6D55FA80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 15:21:49 +0000 (UTC)
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7D2B23C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 15:21:48 +0000 (UTC)
Received: by mail-pg0-f49.google.com with SMTP id u62so14589132pgb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 08:21:48 -0700 (PDT)
Date: Wed, 12 Jul 2017 08:21:39 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20170712082139.17cfd33a@xeon-e3>
In-Reply-To: <12463.1499871476@warthog.procyon.org.uk>
References: <10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
 error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Jul 2017 15:57:56 +0100
David Howells <dhowells@redhat.com> wrote:

> David Howells <dhowells@redhat.com> wrote:
> 
> > In which case, would it make sense to attach such a facility to the
> > task_struct instead?  I implemented a test of this using prctl, but a new
> > syscall might be a better idea, at least for reading.
> > 
> >  (*) int old_setting = prctl(PR_ERRMSG_ENABLE, int setting);
> > 
> >      Enable (setting == 1) or disable (setting == 0) the facility.
> >      Disabling the facility clears the error buffer.
> > 
> >  (*) int size = prctl(PR_ERRMSG_READ, char *buffer, int buf_size);
> > 
> >      Read back a message and discard it.    
> 
> I forgot to add that I've kept the in-kernel interface I have for this very
> simple for the moment:
> 
> 	void errorf(const char *fmt, ...);
> 	int invalf(const char *fmt, ...);
> 
> where these functions take printf-style arguments and where invalf() is the
> same as errorf(), but returns -EINVAL for convenience.  To take an example
> from NFS:
> 
> -	if (auth_info->flavor_len + 1 >= max_flavor_len) {
> -		dfprintk(MOUNT, "NFS: too many sec= flavors\n");
> -		return -EINVAL;
> -	}
> +	if (auth_info->flavor_len + 1 >= max_flavor_len)
> +		return invalf("NFS: too many sec= flavors");

Netlink has recently got extended error reporting, still not used widely
and library support is lacking in most places.
