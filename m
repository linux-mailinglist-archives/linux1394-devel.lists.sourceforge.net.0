Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450B48D33A
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jan 2022 08:57:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n7uye-0003Qj-KN; Thu, 13 Jan 2022 07:56:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support@levitoo.com>) id 1n7uyc-0003QS-6y
 for linux1394-devel@lists.sourceforge.net; Thu, 13 Jan 2022 07:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnBS0MDNVKq+BOxr73tqNifGTD/JawJAy5iO6LqqkzE=; b=nJ3sFDpgYwx+o08LK9OkRD3lE6
 BFKckCbU3dJzAAaXuwSjOcPHYU0/aXumONwWyhgzENgu2jxf5HwccSGZ8u1AGQaDwRBv+4KOjVR2Y
 LNVTr7d6gojR2To7xYkV5Ny764qF+A0NQOAPGv5X6M6z4zh4011wWZfsjHLNfhwNiXPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RnBS0MDNVKq+BOxr73tqNifGTD/JawJAy5iO6LqqkzE=; b=f
 3SqvQAYqWmKe+0gyEL8uNCsPDb1xyi1wqBK+l1ImTb1gYu0M6F0+MlAIZk14jjPm/dOlP+7R9Huzi
 BLCgbSfm/8/zyH6+e0A1KSXIxDxhaoxb3SZt6F4rUTh05r9S7K1seyq0hALx9dHpJRXPVnugAQ97Z
 lHHK/v61w4GvtxNc=;
Received: from [81.0.238.89] (helo=tnt.vhost.cz)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7uyT-0004Td-Im
 for linux1394-devel@lists.sourceforge.net; Thu, 13 Jan 2022 07:56:54 +0000
Received: from vm3033030.23ssd.had.wf (vm3033030.23ssd.had.wf
 [185.224.134.184])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-384) server-digest SHA384)
 (No client certificate requested)
 (Authenticated sender: support@levitoo.com)
 by tnt.vhost.cz (Postfix) with ESMTPSA id CE0671582DF2
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 13 Jan 2022 08:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=levitoo.com; s=vhost;
 t=1642059611; bh=RnBS0MDNVKq+BOxr73tqNifGTD/JawJAy5iO6LqqkzE=;
 h=Reply-To:From:To:Subject:Date;
 b=qbVzIOEVmh1E49QxPjMNPUBQS14Lfvh14WWZv1J+4IE2rsABtUNFcC/Ipqbh8aP1L
 2l0WR71DEb8YrVAVnS4esws7KxTOFjUsSEouzuDDHBzdBhT4HR16JVu2irgr52H3cm
 9NOKhqYqY9ReuXhqN+fSi6hpA9Dd0fXaHKpUHmz8=
From: "Dr Martins Edward" <support@levitoo.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: Very urgent, Did you get my first message
Date: 13 Jan 2022 07:40:09 +0000
Message-ID: <20220113074009.D1F553109FC48780@levitoo.com>
MIME-Version: 1.0
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Dear I have a project that will benefit you and I. Kindly
    reply so we  can process the details. Thanks 
 
 Content analysis details:   (5.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [81.0.238.89 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [drmartinedward80[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [81.0.238.89 listed in bl.score.senderscore.com]
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1n7uyT-0004Td-Im
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
Reply-To: drmartinedward80@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGVsbG8gRGVhcgoKSSBoYXZlIGEgcHJvamVjdCB0aGF0IHdpbGwgYmVuZWZpdCB5b3UgYW5kIEku
IEtpbmRseSByZXBseSBzbyB3ZcKgIApjYW4gcHJvY2VzcyB0aGUgZGV0YWlscy4KCgoKVGhhbmtz
CgpCZXN0IFJlZ2FyZHMKCkRyIE1hcnRpbnMgRWR3YXJkCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
