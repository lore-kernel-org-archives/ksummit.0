Return-Path: <SRS0=FI+p=MN=goodmis.org=rostedt@kernel.org>
Date: Mon, 1 Oct 2018 14:04:02 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20181001140402.0799a8f0@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Moving debugfs file systems
	into sysfs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

At Kernel Recipes, I talked with some people that have mature
interfaces in the debugfs directory, but they can not access them on
systems that have debugfs disabled. What would be the process to have
these systems move out of debugfs? Should they create their own fs and
be mounted in /sys/kernel, with a dedicated directory if the file system
is enabled in the kernel (I had tracefs do that).

Is this something we should discuss at Maintainers Summit? What is the
process for mature debugfs directories? What's the justification to
have them moved? Is there a better answer for this?

-- Steve
