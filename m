Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2F4DCAF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 13:41:42 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B9D5151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 13:41:41 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
References: <CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
	<10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
	<20170712082139.17cfd33a@xeon-e3>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7883.1500644499.1@warthog.procyon.org.uk>
Date: Fri, 21 Jul 2017 14:41:39 +0100
Message-ID: <7884.1500644499@warthog.procyon.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> But every time it comes up people ignore this basic issue:
> 
>      [torvalds@i7 linux]$ git grep -e '-E[A-Z]\{4\}' | wc -l
>      182523
> 
> 
> Give it up. It's really is a horrible idea for so many reasons.

Are you okay with me making it possible to retrieve mount errors, warnings and
informational messages through fd-arbitrated-mount I'm working on?  For
example (and skipping some of the parameters for brevity):

	int fs_fd;

	static inline void e(int x)
	{
		char buf[1024];
		int i;
		if (x == -1)
			fprintf(stderr, "Mount error: %m\n");
		/* Read back any messages */
		while (i = read(fs_fd, buf), i != -1) {
			buf[i] = 0;
			fprintf(stderr, "%s\n", buf);
		}
		if (x == -1)
			exit(1);
	}

	fs_fd = fsopen("ext4");
	e(write(fs_fd, "d /dev/sda3"));
	e(write(fs_fd, "o user_xattr"));
	e(write(fs_fd, "o acl"));
	e(write(fs_fd, "o data=ordered"));
	e(write(fs_fd, "x create"));
	e(fsmount(fs_fd, AT_FDCWD, "/mnt", MS_NODEV));
	close(fs_fd);

David
