Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B092675021
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jan 2023 10:04:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pInJq-0005a7-CZ;
	Fri, 20 Jan 2023 09:04:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pInJX-0005XE-Kz
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jan 2023 09:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TmHk2Jw/H5/lfewHLkv/Eh+g0mwOxyqgMGxl2LvpjW8=; b=NJHURNtlXIwrHpj29zCk7hLM5i
 NBoUltn7EbCq7vcuGqEPLEIla0vjf81/xrpcq1kCQP06y6spCkO8t44YnWSzJn9FomXdONTuRSCVJ
 sSF+NjEBoOPMhPdrwcx4XWqLve8pv8EfXUCpD24OLtkysjqTLcMkIWWyxVBCADpRKLEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TmHk2Jw/H5/lfewHLkv/Eh+g0mwOxyqgMGxl2LvpjW8=; b=b
 QgsdbdlsWXBot5d8SZhgmFWQ3dZbuy7cdEG7IxU5xj1QmIlblStpUv1ycYOL8R2AJG3s6UrOjloBZ
 VB2nMQ2XoY/uc712kq0/URVA3+xcokmkFyYEVAttyeB9Rq/1t2vERWB9/bAq8spnNwPousxE1bQah
 +b1HgecviZtccPSU=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pInJV-00A0ts-0U for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jan 2023 09:03:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B64705C00CB;
 Fri, 20 Jan 2023 04:03:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 20 Jan 2023 04:03:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm3; t=1674205429; x=1674291829; bh=TmHk2Jw/H5
 /lfewHLkv/Eh+g0mwOxyqgMGxl2LvpjW8=; b=aEoYhzcpULQmKgR0Y8GFnowR1C
 MZMA7PeCErHGdB6CrGeUJ9ddjPtb0etJQ/A6aN4auFBG7XSnIpJKLtPTGm375vTo
 KOOYBREF8utgGXYbIX5UkVvlAFWiuJmoQJHy3hUulShGYuJhNlxpv9uvWW6GGbg3
 IncSd6PmCia23O6eIhbIbpFsw2qfofCRDEenGgnkzdaUE88qLEgV43BPZ1W2+hMc
 CWZpvcU0rbYIIauWpnD/FsMaGyjxtiGZ7Wzu6evjfCKXk+w2b/8zdseumRKZvLVt
 mVkieDwfjh2x6hAJ3n6GNNQR6aEZIwVyyVSvCAAhDH6GnNhtY+ngssFbmBhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1674205429; x=1674291829; bh=TmHk2Jw/H5/lfewHLkv/Eh+g0mwOxyqgMGx
 l2LvpjW8=; b=hdIjTxpiXyr7X8zjbhDGdrvOisafxKl5zUpGLP38kd3D4mFOpSQ
 frFJB6Mh5hxZ2vOGjLYb1ZOmEZ2QgGqOKerufCU8vZ8xpcDV4lnZZFTfrLIhNAPU
 DWB7DTJhBK6BhM2Yd5C/OzAnwuYLz4ExyHbHyfblFehW8HXjA4/xKd/M6VlNjYML
 ct31bzFBgFLru/ulTyOoh6hNGRdAxvIBW1kyZEDV+xR//gtJ0dMKhOsoute29VtX
 8W/EGuVPHQXJcUPv0sRQwsb4wGyhqHiGW9ZBnthk1wqufPQ216l76mzS7S2z7QOE
 sGM4N8/tGNSAhPVjCxp8+E6wcp3latP8TmA==
X-ME-Sender: <xms:9VjKYxRP097bOT4iivE5TSc7ocEdbouTZayNtsbihREOsbaZQt9dmA>
 <xme:9VjKY6y_aj88E4zsRf6s9loe-QBy3KZgvOuRq_2s1dBv-vsLZ8dawqKhayb-Fccir
 bv3rCspl0QvfwM0w0Y>
X-ME-Received: <xmr:9VjKY218mLqdM-LGdYeFttELts1hybk-EHfvDHlHu9QXEAHLanxwUVCGsvGsHh0GsLQrX4--KJSrxELTQiukkWgWs0zYoIV_aLeLa_iado8mm1n-dFKPKkc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudduuddguddvlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelhe
 ejieelheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:9VjKY5BUFvKn-skbizC3-ruacV0GFsx8_uLAMCRHy_1osJ7NLRjZNw>
 <xmx:9VjKY6glfzRE6ppAjujoe7s_4jwErxLjQCn9uUJfFdB68b1O4qLkPQ>
 <xmx:9VjKY9qUvn3pDXojMAKLHve8QIQ1JXIiX3vL_UCmpqDfu2UvsB98dg>
 <xmx:9VjKY7v7LmMIlhb8qOyu1b7JQzwp-Re3oxrdSpJXCnoLus-k3COzUw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Jan 2023 04:03:47 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 0/3] firewire: use single object for user space listeners to
 dispatch request to IEC 61883-1 FCP region
Date: Fri, 20 Jan 2023 18:03:41 +0900
Message-Id: <20230120090344.296451-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patch solves long standing issue mentioned by code
 comment[1] and a commit 281e20323ab7 ("firewire: core: fix use-after-free
 regression in FCP handler")[2]. This patchset is based on the kernel t [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pInJV-00A0ts-0U
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

This patch solves long standing issue mentioned by code comment[1] and a
commit 281e20323ab7 ("firewire: core: fix use-after-free regression in FCP
handler")[2]. This patchset is based on the kernel tree to which another
fix is applied[3].

To Iwai-san, I would like to ask you picking them to your local
tree, then send them to mainline tree as well as sound patches when
the merge window is open for v6.3 kernel, unless any question and
objection is posted. (Additionally, I have prepared the other patchset for
the subsystem.)


Linux FireWire subsystem allows multiple listeners to inbound request to
IEC 61883-1 FCP region. The listeners need to access to the payload of
request, while the core function needs to guarantee transaction completion
by sending response. It is a risk to use-after-free by accessing to the
object of request released at completion.

The commit 281e20323ab7 solves the risk by the duplication of payload,
while it is slightly redundant (and a risk of memory leak[3]). Developers
have acknowledged that the advantage of reference count to maintain the
lifetime of object.

Furthermore, the commit uses NULL pointer for the listeners to
distinguish whether the request is to FCP region or not. It is a risk
that the listeners retrieve parameters by dereferencing it. For
instance, a commit b2405aa948b9 ("firewire: add kernel API to access
packet structure in request structure for AR context")[4] adds a kernel
API to retrieve time stamp from the data of request, while it is not
available in the case of request to FCP region.

As a solution, this patchset uses kref structure to maintain lifetime of
data for fw_request structure, then dismisses NULL pointer passing to the
listeners. Finally, the duplication is obsoleted.


This is a log to probe kmalloc/kfree tracepoints events in the case to
handle the request to FCP region.

 irq/35-firewire-273881 [002] 373149.138580: kmalloc: (fw_core_handle_request+0x7b) call_site=fw_core_handle_request+0x7b ptr=0xffff99e93f007300 bytes_req=155 bytes_alloc=192 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138582: kmalloc: (handle_request+0x22e) call_site=handle_request+0x22e ptr=0xffff99e96e54f240 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138583: kmalloc: (handle_request+0x24b) call_site=handle_request+0x24b ptr=0xffff99e8b8a6ed20 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138587: kmalloc: (handle_request+0x22e) call_site=handle_request+0x22e ptr=0xffff99e96e54fa80 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138587: kmalloc: (handle_request+0x24b) call_site=handle_request+0x24b ptr=0xffff99e8a3f06960 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138591: kmalloc: (handle_request+0x22e) call_site=handle_request+0x22e ptr=0xffff99e96e54f380 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138591: kmalloc: (handle_request+0x24b) call_site=handle_request+0x24b ptr=0xffff99e8a3f06600 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138598: kmalloc: (handle_request+0x22e) call_site=handle_request+0x22e ptr=0xffff99e96e54f7c0 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138598: kmalloc: (handle_request+0x24b) call_site=handle_request+0x24b ptr=0xffff99e8a3f06180 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138602: kmalloc: (handle_request+0x22e) call_site=handle_request+0x22e ptr=0xffff99e96e54f4c0 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 373149.138603: kmalloc: (handle_request+0x24b) call_site=handle_request+0x24b ptr=0xffff99e94d48b660 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
         python3-278050 [000] 373149.138605: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e8b8a6ed20
         python3-278050 [000] 373149.138611: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e96e54f240
         python3-278053 [001] 373149.138612: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e8a3f06960
 snd-oxfw-ctl-se-278061 [003] 373149.138618: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e94d48b660
         python3-278053 [001] 373149.138621: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e96e54fa80
         python3-278057 [002] 373149.138627: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e8a3f06180
 snd-oxfw-ctl-se-278061 [003] 373149.138636: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e96e54f4c0
         python3-278055 [000] 373149.138637: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e8a3f06600
         python3-278055 [000] 373149.138642: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e96e54f380
         python3-278057 [002] 373149.138654: kfree:   (fw_request_put+0x2c) call_site=fw_request_put+0x2c ptr=0xffff99e93f007300
         python3-278057 [002] 373149.138654: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e96e54f7c0

There are five listeners of IEC 61883-1 FCP region:

 * Python 3: PID 278050
 * Python 3: PID 278053
 * Python 3: PID 278055
 * Python 3: PID 278057
 * snd-oxfw-ctl-service: PID 278061

When handling 1394 OHCI Asynchronous Receive context (for request) in
softIRQ context, an object is allocated for the request
(ptr=0xffff99e93f007300). When queueing event per client, the reference
count of object is increased.

The object is released when the last listener (PID 278057) executes
ioctl(2) with FW_CDEV_IOC_SEND_REQUEST request to decrease the reference
count and release event resource.

Between the event queueing and event dispatching, the core function send
response to complete transaction. The object is not released in the timing,
expectedly.


This is another log in the case to handle request to non-FCP region:

 irq/35-firewire-273881 [002] 377484.348477: kmalloc: (fw_core_handle_request+0x7b) call_site=fw_core_handle_request+0x7b ptr=0xffff99e96140cd80 bytes_req=148 bytes_alloc=192 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 377484.348478: kmalloc: (handle_request+0xa8) call_site=handle_request+0xa8 ptr=0xffff99e9669303c0 bytes_req=56 bytes_alloc=64 gfp_flags=GFP_ATOMIC
 irq/35-firewire-273881 [002] 377484.348479: kmalloc: (handle_request+0xc4) call_site=handle_request+0xc4 ptr=0xffff99e99eaed0c0 bytes_req=96 bytes_alloc=96 gfp_flags=GFP_ATOMIC
         python3-280425 [001] 377484.348494: kfree:   (fw_device_op_read+0x148) call_site=fw_device_op_read+0x148 ptr=0xffff99e99eaed0c0
         python3-280425 [001] 377484.348563: kfree:   (ioctl_send_response+0x10a) call_site=ioctl_send_response+0x10a ptr=0xffff99e9669303c0
 irq/35-firewire-273881 [002] 377484.348603: kfree:   (free_response_callback+0x5a) call_site=free_response_callback+0x5a ptr=0xffff99e96140cd80

The object is allocated (ptr=0xffff99e96140cd80) in the softIRQ, then
event is queued. Python 3 process (PID 280425) dispatches the event, then
execute ioctl(2) to send response. In softIRQ for 1394 OHCI Asynchronous
Receive context (for response), the object is finally released as a result
to decrease the reference count.

The reference count looks to prevent memory leak.


[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firewire/core-cdev.c?h=v6.1#n691
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=281e20323ab72180137824a298ee9e21e6f9acf6
[3] https://lore.kernel.org/lkml/20230117090610.93792-1-o-takashi@sakamocchi.jp/
[4] I should have elaborated the patch title...
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b2405aa948b95afc5246fa56fc05c3512cd6185c

Takashi Sakamoto (3):
  firewire: core: use kref structure to maintain lifetime of data for
    fw_request structure
  firewire: cdev: obsolete NULL check to detect IEC 61883-1 FCP region
  firewire: cdev: use single object to dispatch event for request to IEC
    61883-1 FCP region

 drivers/firewire/core-cdev.c        | 43 +++++++++--------------
 drivers/firewire/core-transaction.c | 53 +++++++++++++++++++++--------
 drivers/firewire/core.h             |  9 +++++
 include/linux/firewire.h            |  5 ++-
 4 files changed, 67 insertions(+), 43 deletions(-)

-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
