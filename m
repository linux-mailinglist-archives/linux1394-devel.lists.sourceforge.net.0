Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C33924B7E
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jul 2024 00:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sOlrj-0008A0-L9;
	Tue, 02 Jul 2024 22:20:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sOlrh-00089q-AL
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FbUUc7fyTEAl8NSpPBXd8iaJGVOMNRvxvKZqlBnoc0c=; b=k1I6b1SaKhM7EgNcR6U2hCET+7
 BXO+C6TzaGXKbCEAsJ3D+UAtPgoR1ADLKhtpa46ebgS/lBFh9hqoaCdQdPZ8Sl75cHu0FkiVhIJ4e
 Lyl/ZMpNg9fSeIfwFWdzZT6pf0uAticafarq3ykTXDGynlqWlB3ykvWtnTKlXk5GLZEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FbUUc7fyTEAl8NSpPBXd8iaJGVOMNRvxvKZqlBnoc0c=; b=k
 O4WnrdB1lsINuHLDzOdgBBOCWoHR+naifdT2GaULwLUAwRcwzSNX47iv7tn02vKd8Eh8QKSVKuNwJ
 xQKFNnUht96bYtTvnY48/F3InrOGtRzucRpJfUhscZcwjfmygaiETjOqXrc20LuGqk9b+o11NzRya
 kCVWVvNxfa/0nOzE=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOlrh-0008Ql-Fa for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:45 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 0EC7513802B6;
 Tue,  2 Jul 2024 18:20:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 02 Jul 2024 18:20:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1719958839; x=1720045239; bh=FbUUc7fyTE
 Al8NSpPBXd8iaJGVOMNRvxvKZqlBnoc0c=; b=iKWSpVhKKRKBtbjdlZ7a/kzW49
 Q8sXiDDqCxdIoD94ZDBs/cW41x21bOFXbcPdfj9IUM9EGH2hFnJo7Wx92erE7QZf
 3y7coZ4oxaW06p/vZion7c6kt42RpS3m3Yk+TI7dqOTN1g9IbjDG/mZ79N2Euwvf
 y1ZanrKflPQajIioF9nFM5dQJsfnWz5OsgoLAIwMZd0djMbqKxwQTKFgUc5Fh9qG
 4Q3OcotOh1PUSptIGjOFbxloiJPE6pPeh/MgflnQ9NtlLY5dF5BppIIOqBW6RPVB
 aOhwx/qokyvw9J8GUvWb7sSpYAyQ2d1cYIb7+G/a/YyxPfiENYaEpinKG5mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719958839; x=1720045239; bh=FbUUc7fyTEAl8NSpPBXd8iaJGVOM
 NRvxvKZqlBnoc0c=; b=JCOExWfqt1FcGbs9Zs/YxlCzvTgnODRR84gd845riiNu
 LHcHIepgud1gNKdBTakoOz30sxCdpKoPMzQURryk07l0f43P8Xr0nF9SAQH5CN9s
 yfEj/pbWcoJQ6F/7OXyoAT/H5QmifrcKiLqSX4/Kibf9NeiPwYAxeXuNiFZzOxYW
 GBY9pHZDrqdzGRxOYiDpVDFPNlIjg2yrWzICuV2Ju2DPDSICD6L3yvYU53/+XkyL
 CU9SZuc1z6HRRRtsa1VNz/I8oamf5orvosREadPfzxZiMf323PAcMSsbI6RTMDYR
 roz8+wHFGTTd738gaAmEfpHwbq0UfUEPmyjPF5SitA==
X-ME-Sender: <xms:Nn2EZrH_PLp5G3CWmgW_4HwILVePiCs7wca93LM5UF2PUcRKPXDQbg>
 <xme:Nn2EZoUA1JZVu-d5RIIt-ES8FSNd6SeY_-HUTrvWA5Wmm8k_qT1Z8LgaspT6WS5_v
 JdSs-6hFOcSgMIjOYA>
X-ME-Received: <xmr:Nn2EZtIOuHjGxvOsHNBE_mq0cMPpD_zpGA2L7ZEkdJTysV8xO8sS6anvnBga-ErwquL7DMbrDvUY4srvjOctUYJ5c0kfD7-3BYMdD0bPy0tAeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Nn2EZpFnKs4wLA9H5BGb0GwzLKqESLyQ14jBHOCuRxPbJpCSQclxcA>
 <xmx:Nn2EZhUjClUkWrn9MhQi3jNSxRl6XOxX-NnDVqEtUDQKAomH_6vWVw>
 <xmx:Nn2EZkNqGF-ofSRQ52iq6zwoShDutv8OXiejvhBhNgM1OCVmmJDqSw>
 <xmx:Nn2EZg0CP-84qk7G2hBxhPPeTtwL0UqiSv_5EIhmyPVourbwyRw3FA>
 <xmx:N32EZuid7BtwwxOAIP9GbRNe2tBhKa9ep33DrB1SO0832DuYPppLzOqj>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 18:20:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5] firewire: ohci: add tracepoints event for data of Self-ID
 DMA
Date: Wed,  3 Jul 2024 07:20:29 +0900
Message-ID: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In IEEE 1394, Self identification process is the last
 step at bus configuration process initiated by reset. In this step, all nodes
 at the bus broadcast self-ID packet according to the new topology. I [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.149 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sOlrh-0008Ql-Fa
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

In IEEE 1394, Self identification process is the last step at
bus configuration process initiated by reset. In this step, all nodes at
the bus broadcast self-ID packet according to the new topology. In 1394
OHCI, the contents of the self-ID packet stream are transmitted to host
system by DMA. This is Self-ID DMA, and configured by two registers,
signaled by an interrupt, has a format of buffer.

Software handles the interrupt, then parse the contents of self-ID packet
stream to detect all nodes in the bus. Finally it starts any type of
operation in the bus. Both the timing to handle the interrupt and the
data of DMA buffer are important as a first step to use the bus.

This series of patches is to add a tracepoints event to trace the
interrupt and the data of DMA buffer. It would be useful to diagnose
some kind of issue related to the self-ID process; e.g. hardware quirks.
I also expect it useful to investigate the timing issue between hardIRQ
and softIRQ contexts to process the contents of self-ID packets.

Takashi Sakamoto (5):
  firewire: ohci: use common macro to interpret be32 data in le32 buffer
  firewire: ohci: use static function to handle endian issue on PowerPC
    platform
  firewire: ohci: add static inline functions to deserialize for Self-ID
    DMA operation
  firewire: ohci: use inline functions to operate data of self-ID DMA
  firewire: ohci: add tracepoints event for data of Self-ID DMA

 drivers/firewire/.kunitconfig        |  1 +
 drivers/firewire/Kconfig             | 16 ++++++++
 drivers/firewire/Makefile            |  1 +
 drivers/firewire/ohci-serdes-test.c  | 56 ++++++++++++++++++++++++++
 drivers/firewire/ohci.c              | 60 ++++++++++++++++++++--------
 drivers/firewire/ohci.h              | 43 +++++++++++++++++++-
 include/trace/events/firewire_ohci.h | 54 +++++++++++++++++++++++++
 7 files changed, 213 insertions(+), 18 deletions(-)
 create mode 100644 drivers/firewire/ohci-serdes-test.c

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
